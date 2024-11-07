import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:screl_machine_task/model/form_data_model/form_data_model.dart';
import 'package:screl_machine_task/utils/colors.dart';
import 'package:screl_machine_task/view/widgets/custom_texts.dart';
import 'package:screl_machine_task/view/widgets/custome_form_rich_Text.dart';
import 'package:screl_machine_task/view_model/local_db_provider.dart';
import 'package:screl_machine_task/view_model/form_provider.dart';
import 'package:screl_machine_task/view/widgets/custome_button.dart';
import 'package:screl_machine_task/view/widgets/custom_toggle_widget.dart';
import 'package:screl_machine_task/view/widgets/width_height_space.dart';
import 'package:screl_machine_task/view/widgets/custom_form_widget.dart';

class FormWidget extends ConsumerStatefulWidget {
  final BoxConstraints constraints;
  const FormWidget({super.key, required this.constraints});

  @override
  ConsumerState<FormWidget> createState() => _FormWidgetState();
}

final formKey = GlobalKey<FormState>();

class _FormWidgetState extends ConsumerState<FormWidget> {
  final TextEditingController _campaignSubjectController =
      TextEditingController();
  final TextEditingController _previewTextController = TextEditingController();
  final TextEditingController _fromNameController = TextEditingController();
  final TextEditingController _fromEmailController = TextEditingController();

  @override
  void dispose() {
    _campaignSubjectController.dispose();
    _previewTextController.dispose();
    _fromNameController.dispose();
    _fromEmailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isWidScreen = widget.constraints.maxWidth > 1200;
    bool isMediumScreen = widget.constraints.maxWidth > 600;
    List<FormData> formDataState = ref.watch(formDataProvider);

    initialData(formDataState);

    return Scaffold(
      backgroundColor: whiteColor,
      body: body(isWidScreen, isMediumScreen),
    );
  }

/*BODY WIDGET */
  SingleChildScrollView body(bool isWidScreen, bool isMediumScreen) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: isWidScreen
                  ? CrossAxisAlignment.center
                  : isMediumScreen
                      ? CrossAxisAlignment.center
                      : CrossAxisAlignment.start,
              children: [
                titleTextLarge(
                  text: "Create New email Campaign",
                  isWideScreen: isWidScreen,
                ),
                height(height: 6),
                subTitleText(
                  text: "Fill out these details to build your broadcast",
                  isWideScreen: isWidScreen,
                ),
                height(height: isWidScreen ? 32 : 16),
                customeFormEntryField(
                    controller: _campaignSubjectController,
                    title: "Campaign Subject",
                    hintText: "Subject",
                    isValidate: true,
                    isWideScreen: isWidScreen),
                height(height: 12),
                customeFormEntryField(
                    controller: _previewTextController,
                    title: "Preview Text",
                    hintText: "text here...",
                    maxLines: isWidScreen ? 4 : 3,
                    isVisibleBottom: true,
                    isValidate: true,
                    isWideScreen: isWidScreen,
                    bottomText: "Keep this simple of 50 characters"),
                height(height: 12),
                isWidScreen
                    ? Row(
                        children: [
                          Expanded(
                            child: customeFormEntryField(
                                controller: _fromNameController,
                                title: '"From" Name',
                                hintText: "From Anne",
                                isValidate: true,
                                isWideScreen: isWidScreen),
                          ),
                          width(width: 12),
                          Expanded(
                            child: customeFormEntryField(
                                controller: _fromEmailController,
                                title: '"From" Email',
                                hintText: "Anne@example.com",
                                isValidate: true,
                                isWideScreen: isWidScreen),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          customeFormEntryField(
                              controller: _fromNameController,
                              title: '"From" Name',
                              hintText: "From Anne",
                              isValidate: true,
                              isWideScreen: isWidScreen),
                          height(height: isWidScreen ? 12 : 12),
                          customeFormEntryField(
                              controller: _fromEmailController,
                              title: '"From" Email',
                              hintText: "Anne@example.com",
                              isValidate: true,
                              isWideScreen: isWidScreen),
                        ],
                      ),
                height(height: isWidScreen ? 18 : 12),
                const Divider(),
                height(height: isWidScreen ? 18 : 12),
                Consumer(builder: (context, ref, child) {
                  bool isSelected = ref.watch(isRunOnly);
                  return customToggleMethod(
                      title: "Run only once per customer",
                      value: isSelected,
                      onChanged: (value) {
                        ref.read(isRunOnly.notifier).state = value;
                      },
                      isWideScreen: isWidScreen);
                }),
                height(height: 12),
                Consumer(builder: (context, ref, child) {
                  bool isSelected = ref.watch(isCustomAudience);
                  return customToggleMethod(
                      title: "Custom audience",
                      value: isSelected,
                      onChanged: (value) {
                        ref.read(isCustomAudience.notifier).state = value;
                      },
                      isWideScreen: isWidScreen);
                }),
                height(height: 18),
                customRichText(isWideScreen: isWidScreen),
                height(height: isWidScreen ? 18 : 12),
                const Divider(),
                height(height: 18),
                isWidScreen
                    ? Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: CustomButton(
                              color: orangeColor,
                              title: "Save to draft",
                              isSaveDraft: true,
                              onPressed: () {
                                addToDraft();
                              },
                            ),
                          ),
                          width(width: 12),
                          Expanded(
                            flex: 3,
                            child: CustomButton(
                              color: orangeColor,
                              title: "Next Step",
                              onPressed: () {
                                onNextButtonClick();
                              },
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          CustomButton(
                            color: orangeColor,
                            title: "Save to draft",
                            isSaveDraft: true,
                            isFitWidth: true,
                            onPressed: () async {
                              addToDraft();
                            },
                          ),
                          height(height: 12),
                          CustomButton(
                            isFitWidth: true,
                            color: orangeColor,
                            title: "Next Step",
                            onPressed: () async {
                              onNextButtonClick();
                            },
                          ),
                        ],
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }

/*DATA LOADING FROM DB IF AVAILABLE */
  void initialData(List<FormData> formDataState) {
    if (formDataState.isNotEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _campaignSubjectController.text = formDataState.last.subject ?? "";
        _previewTextController.text = formDataState.last.previewText ?? "";
        _fromNameController.text = formDataState.last.name ?? "";
        _fromEmailController.text = formDataState.last.mail ?? "";
        ref.read(isRunOnly.notifier).state =
            formDataState.last.isRunOnly ?? false;
        ref.read(isCustomAudience.notifier).state =
            formDataState.last.isCustomAudience ?? false;
        ref.read(currentStepProvider.notifier).state =
            formDataState.last.isCompleted ?? 0;
      });
    }
  }

/*ADDDING DRAFT FROM FORM */
  addToDraft() {
    bool isRunOnlys = ref.watch(isRunOnly.notifier).state;
    bool isCustomeAduiences = ref.watch(isCustomAudience.notifier).state;
    int currentStep = ref.watch(currentStepProvider.notifier).state;
    FormData formData = FormData(
        subject: _campaignSubjectController.text,
        previewText: _previewTextController.text,
        mail: _fromEmailController.text,
        name: _fromNameController.text,
        isCompleted: currentStep,
        isCustomAudience: isCustomeAduiences,
        isRunOnly: isRunOnlys);
    ref.read(formDataProvider.notifier).clearAllFormData().then(
      (value) {
        ref.read(formDataProvider.notifier).addFormData(formData).then(
          (value) {
            Fluttertoast.showToast(msg: "Added to draft");
          },
        );
      },
    );
  }

/*NEXT BUTTON ONCLICK */
  onNextButtonClick() async {
    bool isRunOnlys = ref.watch(isRunOnly.notifier).state;
    bool isCustomeAduiences = ref.watch(isCustomAudience.notifier).state;
    await ref.read(formDataProvider.notifier).clearAllFormData();

    if (formKey.currentState!.validate()) {
      if (ref.read(currentStepProvider.notifier).state < 4) {
        ref.read(currentStepProvider.notifier).state++;

        Map formData = {
          "subject": _campaignSubjectController.text,
          "preview": _previewTextController.text,
          "from_name": _fromNameController.text,
          "from_mail": _fromEmailController.text,
          "isRunOnly": isRunOnlys.toString(),
          "isCustomAudienc": isCustomeAduiences.toString()
        };
        log(formData.toString());
        _campaignSubjectController.clear();
        _previewTextController.clear();
        _fromNameController.clear();
        _fromEmailController.clear();

        ref.read(isRunOnly.notifier).state = false;
        ref.read(isCustomAudience.notifier).state = false;
      }
    }
  }
}

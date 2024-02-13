abstract class FormSubmissionStatus {
  const FormSubmissionStatus();
}

class InitialFormStatus extends FormSubmissionStatus {
  const InitialFormStatus();
}

class FormSubmitting extends FormSubmissionStatus {}

class FormSubmissionSuccess extends FormSubmissionStatus {}

class FormSubmissionFailed extends FormSubmissionStatus {
  // ignore: prefer_typing_uninitialized_variables
  final exception;
  FormSubmissionFailed(this.exception);
}

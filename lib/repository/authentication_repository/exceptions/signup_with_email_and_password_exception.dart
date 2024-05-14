class signUpWithEmailAndPasswordFailure{
  final String message;
  signUpWithEmailAndPasswordFailure([this.message='Unknown error occurred']);
  factory signUpWithEmailAndPasswordFailure.code(String code){
    switch(code){
      case 'weak-password':
        return signUpWithEmailAndPasswordFailure('Please enter a stronger password');
      case 'invalid-email':
        return signUpWithEmailAndPasswordFailure('Email is not valid');
      case 'email-already-in-use':
        return signUpWithEmailAndPasswordFailure('There is already an account with this email. Please login.');
      case 'operation-not-allowed':
        return signUpWithEmailAndPasswordFailure('This operation is not allowed. Please contact support');
      case 'user-disabled':
        return signUpWithEmailAndPasswordFailure('This user has been disabled. Please contact support');
      default:
        return signUpWithEmailAndPasswordFailure();
    }
  }
}
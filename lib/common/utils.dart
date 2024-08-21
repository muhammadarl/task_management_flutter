import 'package:intl/intl.dart';

String dateByStatus(Task task) {
  switch (task.status) {
    case 'Queue':
      return _formatDateTime1(task.createdAt);
    case 'Review':
      return _formatDateTime1(task.submitDate);
    case 'Approved':
      return _formatDateTime1(task.approvedDate);
    case 'Rejected':
      return _formatDateTime1(task.rejectedDate);
  }
}

String _formatDateTime1(DateTime dateTime) {
  return DateFormat('d MMM yyyy, HH:mm').format(dateTime);
}

String iconByStatus(Task task) {
  switch (task.status) {
    case 'Queue':
      return 'assets/Icon/queue.svg';
    case 'Review':
      return 'assets/Icon/review.svg';
    case 'Approved':
      return 'assets/Icon/approved.svg';
    case 'Rejected':
      return 'assets/Icon/rejected.svg';
  }
}

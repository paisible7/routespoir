import '../models/membre.dart';

class MemberService {
  List<Member> _members = [];

  List<Member> get members => _members;

  void addMember(Member member) {
    _members.add(member);
  }

  void removeMember(String id) {
    _members.removeWhere((member) => member.id == id);
  }
}
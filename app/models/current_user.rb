class CurrentUser
  attr_reader :sunetid, :privgroups

  def initialize(sunetid, privgroups = [])
    @sunetid = (sunetid || '').sub('@stanford.edu', '')
    @privgroups = privgroups
  end

  def to_s
    sunetid
  end

  def superuser?
    return false unless Settings && Settings.workgroups
    privgroups.include?(Settings.workgroups.superuser)
  end
end

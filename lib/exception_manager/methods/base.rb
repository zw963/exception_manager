class ExceptionManager::Methods::Base
  attr_reader :exception_binding

  def initialize(exception_binding)
    @exception_binding = exception_binding
  end

  def self.fetch(exception_binding)
    ExceptionManager::Notifier.with_notification do
      run(exception_binding)
    end
  end

  def self.run(exception_binding)
    raise NotImplementedError
  end
end
#
# step.rb
# Copyright © 2018 Netguru S.A. All rights reserved.
#

module Highway
  module Steps
    
    # This class serves as a base class for all step definition classes. It
    # contains a common API and some useful utilities.
    class Step

      public

      # Name of the step as it appears in configuration file.
      #
      # @return [String]
      def self.name()
        raise NotImplementedError.new("You must override `#{__method__.to_s}` in `#{self.class.to_s}`.")
      end

      # Parameters that this step recognizes.
      #
      # @return [Array<Highway::Steps::Parameter]
      def self.parameters()
        raise NotImplementedError.new("You must override `#{__method__.to_s}` in `#{self.class.to_s}`.")
      end

      # Run the step in given context containing inputs and Fastlane runner.
      #
      # @param parameters [Hash<String, Object>] Parameters of theb step.
      # @param context [Highway::Runtime::Context] The runtime context.
      #
      # @return [Void]
      def self.run(parameters:, context:)
        raise NotImplementedError.new("You must override `#{__method__.to_s}` in `#{self.class.to_s}`.")
      end

    end

  end
end
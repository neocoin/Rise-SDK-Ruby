require_relative 'api/helpers'
require_relative 'api/accounts'
require_relative 'api/blocks'
require_relative 'api/delegates'
require_relative 'api/loader'
require_relative 'api/multiSignatures'
require_relative 'api/peers'
require_relative 'api/signatures'
require_relative 'api/transactions'
require 'ostruct'

class RiseSDK
  attr_accessor :api
  def initialize
    @helpers = Helpers.new
    @api = OpenStruct.new
    @api.accounts = Accounts.new(@helpers)
    @api.blocks = Blocks.new(@helpers)
    @api.delegates = Delegates.new(@helpers)
    @api.loader = Loader.new(@helpers)
    @api.multiSignatures = MultiSignatures.new(@helpers)
    @api.peers = Peers.new(@helpers)
    @api.signatures = Signatures.new(@helpers)
    @api.transactions = Transactions.new(@helpers)
  end
  def setHost(host)
    @helpers.baseURL = host
  end
end

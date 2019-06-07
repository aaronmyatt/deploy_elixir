# DeployElixir

**TODO: Add description**

## Installation

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/deploy_elixir](https://hexdocs.pm/deploy_elixir).

# Install Sqitch
`brew tap sqitchers/sqitch`
`brew install sqitch --with-postgres-support`

# Install pgTap
`cpan -u`
`cpan TAP::Parser::SourceHandler::pgTAP`
`cpanm IO::Pager`
`git clone https://github.com/theory/pgtap.git`
`cd pgtap`
> You may want to perform the make tasks as your `postgres` user
`make`
`make installcheck`
`make intall`
> start a postgres CLI session as a superuser
`CREATE EXTENSION IF NOT EXISTS pgtap;`
> Consider making your life a little easier and a pgTap template to Sqitch:
> https://justatheory.com/2014/01/templating-tests-with-sqitch/

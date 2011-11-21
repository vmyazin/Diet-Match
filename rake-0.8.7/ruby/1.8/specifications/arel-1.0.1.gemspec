# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{arel}
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Bryan Helmkamp", "Nick Kallen", "Emilio Tagua"]
  s.date = %q{2010-06-07}
  s.description = %q{Arel is a Relational Algebra for Ruby. It 1) simplifies the generation complex
of SQL queries and it 2) adapts to various RDBMS systems. It is intended to be
a framework framework; that is, you can build your own ORM with it, focusing on
innovative object and collection modeling as opposed to database compatibility
and query generation.}
  s.email = %q{bryan@brynary.com}
  s.extra_rdoc_files = ["History.txt", "README.markdown"]
  s.files = ["lib/arel/algebra/attributes/attribute.rb", "lib/arel/algebra/attributes/boolean.rb", "lib/arel/algebra/attributes/decimal.rb", "lib/arel/algebra/attributes/float.rb", "lib/arel/algebra/attributes/integer.rb", "lib/arel/algebra/attributes/string.rb", "lib/arel/algebra/attributes/time.rb", "lib/arel/algebra/attributes.rb", "lib/arel/algebra/core_extensions/hash.rb", "lib/arel/algebra/core_extensions/object.rb", "lib/arel/algebra/core_extensions/symbol.rb", "lib/arel/algebra/core_extensions.rb", "lib/arel/algebra/expression.rb", "lib/arel/algebra/header.rb", "lib/arel/algebra/ordering.rb", "lib/arel/algebra/predicates.rb", "lib/arel/algebra/relations/operations/from.rb", "lib/arel/algebra/relations/operations/group.rb", "lib/arel/algebra/relations/operations/having.rb", "lib/arel/algebra/relations/operations/join.rb", "lib/arel/algebra/relations/operations/lock.rb", "lib/arel/algebra/relations/operations/order.rb", "lib/arel/algebra/relations/operations/project.rb", "lib/arel/algebra/relations/operations/skip.rb", "lib/arel/algebra/relations/operations/take.rb", "lib/arel/algebra/relations/operations/where.rb", "lib/arel/algebra/relations/relation.rb", "lib/arel/algebra/relations/row.rb", "lib/arel/algebra/relations/utilities/compound.rb", "lib/arel/algebra/relations/utilities/externalization.rb", "lib/arel/algebra/relations/utilities/nil.rb", "lib/arel/algebra/relations/writes.rb", "lib/arel/algebra/relations.rb", "lib/arel/algebra/value.rb", "lib/arel/algebra.rb", "lib/arel/engines/memory/engine.rb", "lib/arel/engines/memory/relations/array.rb", "lib/arel/engines/memory/relations/operations.rb", "lib/arel/engines/memory/relations.rb", "lib/arel/engines/memory.rb", "lib/arel/engines/sql/attributes.rb", "lib/arel/engines/sql/christener.rb", "lib/arel/engines/sql/compilers/ibm_db_compiler.rb", "lib/arel/engines/sql/compilers/mysql_compiler.rb", "lib/arel/engines/sql/compilers/oracle_compiler.rb", "lib/arel/engines/sql/compilers/postgresql_compiler.rb", "lib/arel/engines/sql/compilers/sqlite_compiler.rb", "lib/arel/engines/sql/core_extensions/array.rb", "lib/arel/engines/sql/core_extensions/nil_class.rb", "lib/arel/engines/sql/core_extensions/object.rb", "lib/arel/engines/sql/core_extensions/range.rb", "lib/arel/engines/sql/core_extensions.rb", "lib/arel/engines/sql/engine.rb", "lib/arel/engines/sql/formatters.rb", "lib/arel/engines/sql/relations/compiler.rb", "lib/arel/engines/sql/relations/table.rb", "lib/arel/engines/sql/relations/utilities/nil.rb", "lib/arel/engines/sql/relations.rb", "lib/arel/engines/sql.rb", "lib/arel/engines.rb", "lib/arel/recursion/base_case.rb", "lib/arel/session.rb", "lib/arel/sql_literal.rb", "lib/arel/version.rb", "lib/arel.rb", "History.txt", "README.markdown", "spec/algebra/unit/predicates/binary_spec.rb", "spec/algebra/unit/predicates/equality_spec.rb", "spec/algebra/unit/predicates/in_spec.rb", "spec/algebra/unit/predicates/inequality_spec.rb", "spec/algebra/unit/predicates/predicate_spec.rb", "spec/algebra/unit/primitives/attribute_spec.rb", "spec/algebra/unit/primitives/expression_spec.rb", "spec/algebra/unit/primitives/value_spec.rb", "spec/algebra/unit/relations/alias_spec.rb", "spec/algebra/unit/relations/delete_spec.rb", "spec/algebra/unit/relations/group_spec.rb", "spec/algebra/unit/relations/insert_spec.rb", "spec/algebra/unit/relations/join_spec.rb", "spec/algebra/unit/relations/order_spec.rb", "spec/algebra/unit/relations/project_spec.rb", "spec/algebra/unit/relations/relation_spec.rb", "spec/algebra/unit/relations/skip_spec.rb", "spec/algebra/unit/relations/table_spec.rb", "spec/algebra/unit/relations/take_spec.rb", "spec/algebra/unit/relations/update_spec.rb", "spec/algebra/unit/relations/where_spec.rb", "spec/algebra/unit/session/session_spec.rb", "spec/attributes/boolean_spec.rb", "spec/attributes/float_spec.rb", "spec/attributes/header_spec.rb", "spec/attributes/integer_spec.rb", "spec/attributes/string_spec.rb", "spec/attributes/time_spec.rb", "spec/attributes_spec.rb", "spec/engines/memory/integration/joins/cross_engine_spec.rb", "spec/engines/memory/unit/relations/array_spec.rb", "spec/engines/memory/unit/relations/insert_spec.rb", "spec/engines/memory/unit/relations/join_spec.rb", "spec/engines/memory/unit/relations/order_spec.rb", "spec/engines/memory/unit/relations/project_spec.rb", "spec/engines/memory/unit/relations/skip_spec.rb", "spec/engines/memory/unit/relations/take_spec.rb", "spec/engines/memory/unit/relations/where_spec.rb", "spec/engines/sql/integration/joins/with_adjacency_spec.rb", "spec/engines/sql/integration/joins/with_aggregations_spec.rb", "spec/engines/sql/integration/joins/with_compounds_spec.rb", "spec/engines/sql/unit/engine_spec.rb", "spec/engines/sql/unit/predicates/binary_spec.rb", "spec/engines/sql/unit/predicates/equality_spec.rb", "spec/engines/sql/unit/predicates/in_spec.rb", "spec/engines/sql/unit/predicates/noteq_spec.rb", "spec/engines/sql/unit/predicates/predicates_spec.rb", "spec/engines/sql/unit/primitives/attribute_spec.rb", "spec/engines/sql/unit/primitives/expression_spec.rb", "spec/engines/sql/unit/primitives/literal_spec.rb", "spec/engines/sql/unit/primitives/value_spec.rb", "spec/engines/sql/unit/relations/alias_spec.rb", "spec/engines/sql/unit/relations/delete_spec.rb", "spec/engines/sql/unit/relations/from_spec.rb", "spec/engines/sql/unit/relations/group_spec.rb", "spec/engines/sql/unit/relations/having_spec.rb", "spec/engines/sql/unit/relations/insert_spec.rb", "spec/engines/sql/unit/relations/join_spec.rb", "spec/engines/sql/unit/relations/lock_spec.rb", "spec/engines/sql/unit/relations/order_spec.rb", "spec/engines/sql/unit/relations/project_spec.rb", "spec/engines/sql/unit/relations/skip_spec.rb", "spec/engines/sql/unit/relations/table_spec.rb", "spec/engines/sql/unit/relations/take_spec.rb", "spec/engines/sql/unit/relations/update_spec.rb", "spec/engines/sql/unit/relations/where_spec.rb", "spec/relations/join_spec.rb", "spec/relations/relation_spec.rb", "spec/shared/relation_spec.rb", "spec/spec_helper.rb", "spec/sql/christener_spec.rb", "spec/support/check.rb", "spec/support/connections/mysql_connection.rb", "spec/support/connections/oracle_connection.rb", "spec/support/connections/postgresql_connection.rb", "spec/support/connections/sqlite3_connection.rb", "spec/support/guards.rb", "spec/support/matchers/be_like.rb", "spec/support/matchers/disambiguate_attributes.rb", "spec/support/matchers/hash_the_same_as.rb", "spec/support/matchers/have_rows.rb", "spec/support/matchers.rb", "spec/support/model.rb", "spec/support/schemas/mysql_schema.rb", "spec/support/schemas/oracle_schema.rb", "spec/support/schemas/postgresql_schema.rb", "spec/support/schemas/sqlite3_schema.rb"]
  s.homepage = %q{http://github.com/brynary/arel}
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{arel}
  s.rubygems_version = %q{1.4.2}
  s.summary = %q{Arel is a relational algebra engine for Ruby}
  s.test_files = ["spec/algebra/unit/predicates/binary_spec.rb", "spec/algebra/unit/predicates/equality_spec.rb", "spec/algebra/unit/predicates/in_spec.rb", "spec/algebra/unit/predicates/inequality_spec.rb", "spec/algebra/unit/predicates/predicate_spec.rb", "spec/algebra/unit/primitives/attribute_spec.rb", "spec/algebra/unit/primitives/expression_spec.rb", "spec/algebra/unit/primitives/value_spec.rb", "spec/algebra/unit/relations/alias_spec.rb", "spec/algebra/unit/relations/delete_spec.rb", "spec/algebra/unit/relations/group_spec.rb", "spec/algebra/unit/relations/insert_spec.rb", "spec/algebra/unit/relations/join_spec.rb", "spec/algebra/unit/relations/order_spec.rb", "spec/algebra/unit/relations/project_spec.rb", "spec/algebra/unit/relations/relation_spec.rb", "spec/algebra/unit/relations/skip_spec.rb", "spec/algebra/unit/relations/table_spec.rb", "spec/algebra/unit/relations/take_spec.rb", "spec/algebra/unit/relations/update_spec.rb", "spec/algebra/unit/relations/where_spec.rb", "spec/algebra/unit/session/session_spec.rb", "spec/attributes/boolean_spec.rb", "spec/attributes/float_spec.rb", "spec/attributes/header_spec.rb", "spec/attributes/integer_spec.rb", "spec/attributes/string_spec.rb", "spec/attributes/time_spec.rb", "spec/attributes_spec.rb", "spec/engines/memory/integration/joins/cross_engine_spec.rb", "spec/engines/memory/unit/relations/array_spec.rb", "spec/engines/memory/unit/relations/insert_spec.rb", "spec/engines/memory/unit/relations/join_spec.rb", "spec/engines/memory/unit/relations/order_spec.rb", "spec/engines/memory/unit/relations/project_spec.rb", "spec/engines/memory/unit/relations/skip_spec.rb", "spec/engines/memory/unit/relations/take_spec.rb", "spec/engines/memory/unit/relations/where_spec.rb", "spec/engines/sql/integration/joins/with_adjacency_spec.rb", "spec/engines/sql/integration/joins/with_aggregations_spec.rb", "spec/engines/sql/integration/joins/with_compounds_spec.rb", "spec/engines/sql/unit/engine_spec.rb", "spec/engines/sql/unit/predicates/binary_spec.rb", "spec/engines/sql/unit/predicates/equality_spec.rb", "spec/engines/sql/unit/predicates/in_spec.rb", "spec/engines/sql/unit/predicates/noteq_spec.rb", "spec/engines/sql/unit/predicates/predicates_spec.rb", "spec/engines/sql/unit/primitives/attribute_spec.rb", "spec/engines/sql/unit/primitives/expression_spec.rb", "spec/engines/sql/unit/primitives/literal_spec.rb", "spec/engines/sql/unit/primitives/value_spec.rb", "spec/engines/sql/unit/relations/alias_spec.rb", "spec/engines/sql/unit/relations/delete_spec.rb", "spec/engines/sql/unit/relations/from_spec.rb", "spec/engines/sql/unit/relations/group_spec.rb", "spec/engines/sql/unit/relations/having_spec.rb", "spec/engines/sql/unit/relations/insert_spec.rb", "spec/engines/sql/unit/relations/join_spec.rb", "spec/engines/sql/unit/relations/lock_spec.rb", "spec/engines/sql/unit/relations/order_spec.rb", "spec/engines/sql/unit/relations/project_spec.rb", "spec/engines/sql/unit/relations/skip_spec.rb", "spec/engines/sql/unit/relations/table_spec.rb", "spec/engines/sql/unit/relations/take_spec.rb", "spec/engines/sql/unit/relations/update_spec.rb", "spec/engines/sql/unit/relations/where_spec.rb", "spec/relations/join_spec.rb", "spec/relations/relation_spec.rb", "spec/shared/relation_spec.rb", "spec/spec_helper.rb", "spec/sql/christener_spec.rb", "spec/support/check.rb", "spec/support/connections/mysql_connection.rb", "spec/support/connections/oracle_connection.rb", "spec/support/connections/postgresql_connection.rb", "spec/support/connections/sqlite3_connection.rb", "spec/support/guards.rb", "spec/support/matchers/be_like.rb", "spec/support/matchers/disambiguate_attributes.rb", "spec/support/matchers/hash_the_same_as.rb", "spec/support/matchers/have_rows.rb", "spec/support/matchers.rb", "spec/support/model.rb", "spec/support/schemas/mysql_schema.rb", "spec/support/schemas/oracle_schema.rb", "spec/support/schemas/postgresql_schema.rb", "spec/support/schemas/sqlite3_schema.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, ["~> 3.0.0"])
    else
      s.add_dependency(%q<activesupport>, ["~> 3.0.0"])
    end
  else
    s.add_dependency(%q<activesupport>, ["~> 3.0.0"])
  end
end

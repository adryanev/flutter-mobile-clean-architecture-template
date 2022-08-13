.PHONY: get
get:
	@flutter pub get

.PHONY: build
build:
	@flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: watch
watch:
	@flutter pub run build_runner watch --delete-conflicting-outputs

.PHONY: apk-dev
apk-dev:
	@flutter build apk --debug --flavor development --target lib/main_development.dart

.PHONY: apk-stg
apk-stg:
	@flutter build apk --profile --flavor staging --target lib/main_staging.dart

.PHONY: apk-prod
apk-prod:
	@flutter build apk --release --flavor production --target lib/main_production.dart

.PHONY: ipa-dev
ipa-dev:
	@flutter build ipa --debug --flavor development --target lib/main_development.dart

.PHONY: ipa-stg
ipa-stg:
	@flutter build ipa --profile --flavor staging --target lib/main_staging.dart

.PHONY: ipa-prod
ipa-prod:
	@flutter build ipa --release --flavor production --target lib/main_production.dart

.PHONY: test
test:
	@flutter test --coverage --test-randomize-ordering-seed random

.PHONY: fix
fix:
	@dart fix --apply

.PHONY: check-fix
check-fix:
	@dart fix --dry-run

.PHONY: firebase-dev
firebase-dev:
	@flutterfire config -y --account ${FIREBASE_EMAIL} --project=${FIREBASE_PROJECT_ID_DEV} --out=lib/firebase_options_dev.dart  --ios-bundle-id=${PROJECT_PACKAGE}.dev --android-package-name=${PROJECT_PACKAGE}.dev

.PHONY: firebase-stg
firebase-stg:
	@flutterfire config -y --account ${FIREBASE_EMAIL} --project=${FIREBASE_PROJECT_ID_STG} --out=lib/firebase_options_stg.dart  --ios-bundle-id=${PROJECT_PACKAGE}.stg --android-package-name=${PROJECT_PACKAGE}.stg

.PHONY: firebase-prod
firebase-prod:
	@flutterfire config -y --account ${FIREBASE_EMAIL} --project=${FIREBASE_PROJECT_ID_PROD} --out=lib/firebase_options.dart  --ios-bundle-id=${PROJECT_PACKAGE} --android-package-name=${PROJECT_PACKAGE}

.PHONY: analyze
analyze:
	@flutter analyze lib test

.PHONY: format
format:
	@flutter format --set-exit-if-changed lib test

.PHONY: prepare
prepare: fix format analyze
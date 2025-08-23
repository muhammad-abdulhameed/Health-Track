class AppValues {
  // Appointment Types
  static const String appointmentTypeConsultation = 'CONSULTATION';
  static const String appointmentTypeFollowUp = 'FOLLOW_UP';
  static const String appointmentTypeEmergency = 'EMERGENCY';
  static const String appointmentTypeRoutine = 'ROUTINE';
  static const String appointmentTypeSpecialist = 'SPECIALIST';
  static const String appointmentTypeLabTest = 'LAB_TEST';
  static const String appointmentTypeImaging = 'IMAGING';
  static const String appointmentTypeVaccination = 'VACCINATION';
  static const String appointmentTypeSurgery = 'SURGERY';
  static const String appointmentTypeTherapy = 'THERAPY';
  
  // Medical Specialties
  static const String specialtyCardiology = 'CARDIOLOGY';
  static const String specialtyDermatology = 'DERMATOLOGY';
  static const String specialtyEndocrinology = 'ENDOCRINOLOGY';
  static const String specialtyGastroenterology = 'GASTROENTEROLOGY';
  static const String specialtyGeneralMedicine = 'GENERAL_MEDICINE';
  static const String specialtyGynecology = 'GYNECOLOGY';
  static const String specialtyNeurology = 'NEUROLOGY';
  static const String specialtyOncology = 'ONCOLOGY';
  static const String specialtyOphthalmology = 'OPHTHALMOLOGY';
  static const String specialtyOrthopedics = 'ORTHOPEDICS';
  static const String specialtyPediatrics = 'PEDIATRICS';
  static const String specialtyPsychiatry = 'PSYCHIATRY';
  static const String specialtyRadiology = 'RADIOLOGY';
  static const String specialtyUrology = 'UROLOGY';
  
  // Appointment Status
  static const String statusScheduled = 'SCHEDULED';
  static const String statusConfirmed = 'CONFIRMED';
  static const String statusInProgress = 'IN_PROGRESS';
  static const String statusCompleted = 'COMPLETED';
  static const String statusCancelled = 'CANCELLED';
  static const String statusNoShow = 'NO_SHOW';
  static const String statusRescheduled = 'RESCHEDULED';
  static const String statusPending = 'PENDING';
  
  // Booking Limits
  static const int maxAppointmentsPerDay = 10;
  static const int maxAppointmentsPerWeek = 50;
  static const int maxAppointmentsPerMonth = 200;
  static const int minAdvanceBookingHours = 2;
  static const int maxAdvanceBookingDays = 90;
  static const int appointmentDurationDefault = 30; // minutes
  static const int appointmentDurationShort = 15; // minutes
  static const int appointmentDurationLong = 60; // minutes
  static const int appointmentDurationExtended = 90; // minutes
  
  // Time Slots
  static const int clinicOpenHour = 8;
  static const int clinicCloseHour = 18;
  static const int timeSlotInterval = 30; // minutes
  static const int lunchBreakStart = 12;
  static const int lunchBreakEnd = 13;
  
  // Patient Limits
  static const int maxPatientsPerDoctor = 1000;
  static const int maxAppointmentsPerPatient = 5;
  static const int maxFamilyMembers = 10;
  static const int minPatientAge = 0;
  static const int maxPatientAge = 120;
  
  // Medical Records
  static const int maxFileSize = 10 * 1024 * 1024; // 10 MB
  static const int maxImagesPerRecord = 20;
  static const int maxDocumentsPerRecord = 50;
  static const int maxNotesLength = 2000;
  static const int maxPrescriptionLength = 1000;
  
  // Notification Settings
  static const int reminderAdvanceHours = 24;
  static const int reminderAdvanceHoursUrgent = 2;
  static const int maxRemindersPerAppointment = 3;
  static const int notificationRetentionDays = 30;
  
  // Payment and Insurance
  static const String paymentMethodCash = 'CASH';
  static const String paymentMethodCard = 'CARD';
  static const String paymentMethodInsurance = 'INSURANCE';
  static const String paymentMethodOnline = 'ONLINE';
  static const String paymentStatusPending = 'PENDING';
  static const String paymentStatusPaid = 'PAID';
  static const String paymentStatusFailed = 'FAILED';
  static const String paymentStatusRefunded = 'REFUNDED';
  
  // Storage Keys
  static const String userProfileKey = 'user_profile';
  static const String patientDataKey = 'patient_data';
  static const String appointmentsKey = 'appointments';
  static const String medicalRecordsKey = 'medical_records';
  static const String prescriptionsKey = 'prescriptions';
  static const String insuranceKey = 'insurance_info';
  static const String paymentHistoryKey = 'payment_history';
  static const String notificationsKey = 'notifications';
  static const String settingsKey = 'app_settings';
  static const String themeKey = 'app_theme';
  static const String languageKey = 'app_language';
  
  // API Configuration
  static const String baseUrl = 'https://api.medicalbooking.com';
  static const String apiVersion = 'v1';
  static const int requestTimeout = 30000; // milliseconds
  static const int maxRetries = 3;
  
  // API Endpoints
  static const String appointmentsEndpoint = '/appointments';
  static const String patientsEndpoint = '/patients';
  static const String doctorsEndpoint = '/doctors';
  static const String specialtiesEndpoint = '/specialties';
  static const String medicalRecordsEndpoint = '/medical-records';
  static const String prescriptionsEndpoint = '/prescriptions';
  static const String insuranceEndpoint = '/insurance';
  static const String paymentsEndpoint = '/payments';
  static const String notificationsEndpoint = '/notifications';
  static const String authEndpoint = '/auth';
  
  // Animation Durations
  static const int animationDurationFast = 200; // milliseconds
  static const int animationDurationNormal = 300; // milliseconds
  static const int animationDurationSlow = 500; // milliseconds
  static const int animationDurationVerySlow = 800; // milliseconds
  
  // Debounce Delays
  static const int searchDebounceDelay = 300; // milliseconds
  static const int inputDebounceDelay = 500; // milliseconds
  static const int scrollDebounceDelay = 100; // milliseconds
  
  // Cache Durations
  static const int cacheDurationShort = 300; // seconds (5 minutes)
  static const int cacheDurationMedium = 3600; // seconds (1 hour)
  static const int cacheDurationLong = 86400; // seconds (1 day)
  static const int cacheDurationVeryLong = 604800; // seconds (1 week)
  
  // Sync Intervals
  static const int syncIntervalShort = 300; // seconds (5 minutes)
  static const int syncIntervalMedium = 1800; // seconds (30 minutes)
  static const int syncIntervalLong = 3600; // seconds (1 hour)
  static const int syncIntervalVeryLong = 86400; // seconds (1 day)
  
  // Validation Limits
  static const int maxNameLength = 100;
  static const int minNameLength = 2;
  static const int maxEmailLength = 254;
  static const int maxPhoneLength = 20;
  static const int maxAddressLength = 500;
  static const int maxMedicalHistoryLength = 2000;
  static const int maxAllergiesLength = 500;
  static const int maxMedicationsLength = 1000;
  
  // Pagination
  static const int defaultPageSize = 20;
  static const int maxPageSize = 100;
  static const int minPageSize = 5;
  
  // Error Codes
  static const String errorNetwork = 'NETWORK_ERROR';
  static const String errorUnauthorized = 'UNAUTHORIZED';
  static const String errorForbidden = 'FORBIDDEN';
  static const String errorNotFound = 'NOT_FOUND';
  static const String errorValidation = 'VALIDATION_ERROR';
  static const String errorServer = 'SERVER_ERROR';
  static const String errorUnknown = 'UNKNOWN_ERROR';
  static const String errorAppointmentConflict = 'APPOINTMENT_CONFLICT';
  static const String errorDoctorUnavailable = 'DOCTOR_UNAVAILABLE';
  static const String errorPatientNotFound = 'PATIENT_NOT_FOUND';
  static const String errorInsuranceExpired = 'INSURANCE_EXPIRED';
  
  // Success Codes
  static const String successCreated = 'CREATED';
  static const String successUpdated = 'UPDATED';
  static const String successDeleted = 'DELETED';
  static const String successSynced = 'SYNCED';
  static const String successBooked = 'BOOKED';
  static const String successConfirmed = 'CONFIRMED';
  static const String successCancelled = 'CANCELLED';
  static const String successRescheduled = 'RESCHEDULED';
  
  // Permission Types
  static const String permissionHealth = 'HEALTH';
  static const String permissionLocation = 'LOCATION';
  static const String permissionCamera = 'CAMERA';
  static const String permissionStorage = 'STORAGE';
  static const String permissionNotification = 'NOTIFICATION';
  static const String permissionMicrophone = 'MICROPHONE';
  static const String permissionContacts = 'CONTACTS';
  
  // Data Types
  static const String dataTypeAppointment = 'APPOINTMENT';
  static const String dataTypePatient = 'PATIENT';
  static const String dataTypeDoctor = 'DOCTOR';
  static const String dataTypeSpecialty = 'SPECIALTY';
  static const String dataTypeMedicalRecord = 'MEDICAL_RECORD';
  static const String dataTypePrescription = 'PRESCRIPTION';
  static const String dataTypeInsurance = 'INSURANCE';
  static const String dataTypePayment = 'PAYMENT';
  static const String dataTypeNotification = 'NOTIFICATION';
  
  // Urgency Levels
  static const String urgencyLow = 'LOW';
  static const String urgencyMedium = 'MEDIUM';
  static const String urgencyHigh = 'HIGH';
  static const String urgencyEmergency = 'EMERGENCY';
  
  // Insurance Types
  static const String insuranceTypePrivate = 'PRIVATE';
  static const String insuranceTypePublic = 'PUBLIC';
  static const String insuranceTypeCorporate = 'CORPORATE';
  static const String insuranceTypeNone = 'NONE';
} 
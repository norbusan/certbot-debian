# Upstream recommends attempting renewal twice a day
#
# Eventually, this will be an opportunity to validate certificates
# haven't been revoked, etc.  Renewal will only occur if expiration
# is within 30 days.
0 */12 * * * root perl -e 'sleep int(rand(3600))'; certbot -q renew

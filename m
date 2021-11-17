Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CB1F9453D0C
	for <lists+usrp-users@lfdr.de>; Wed, 17 Nov 2021 01:15:10 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 94F67384060
	for <lists+usrp-users@lfdr.de>; Tue, 16 Nov 2021 19:15:09 -0500 (EST)
Received: from mail.xtort.eu (mail.xtort.eu [176.9.105.145])
	by mm2.emwd.com (Postfix) with ESMTPS id 2A99B383F72
	for <usrp-users@lists.ettus.com>; Tue, 16 Nov 2021 19:12:31 -0500 (EST)
Received: from [192.168.1.66] (i6DFAE125.versanet.de [109.250.225.37])
	by mail.xtort.eu (Postfix) with ESMTPSA id 27B43281000
	for <usrp-users@lists.ettus.com>; Wed, 17 Nov 2021 01:12:30 +0100 (CET)
To: usrp-users@lists.ettus.com
From: schneider <schneider@muc.ccc.de>
Message-ID: <e19102d3-9da5-bdcc-2f97-671ad786f166@muc.ccc.de>
Date: Wed, 17 Nov 2021 01:12:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
Content-Language: en-US
Message-ID-Hash: 6ZOCFQSKLHSG2IH3ID7XPWVKHVHZXPBP
X-Message-ID-Hash: 6ZOCFQSKLHSG2IH3ID7XPWVKHVHZXPBP
X-MailFrom: schneider@muc.ccc.de
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] gps_locked sensor indicating internal GPSDO lock too early
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6ZOCFQSKLHSG2IH3ID7XPWVKHVHZXPBP/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

I've experienced and issue while working with the internal GPSDO (TCXO
option) of an USRP B210: a call to `get_mboard_sensor("gps_locked", 0)`
can return `true` even if the (Jackson Labs) GPSDO is not properly
locked yet.

The reason seems to be that the "gps_locked" sensor is looking at a
field in the GPGGA sentence which can change from "0" to "1" before the
GPSDO is properly locked.

I've collected some debug traces, consisting of SERVO, GPGGA and GPRMC
sentences (as defined in `lib/usrp/gps_ctrl.cpp`). They are attached at
the end of this mail.

Index 6 of the GPGGA sentence is used by the "gps_locked" sensor.

Index 7 of the SERVO sentence actually indicates lock status of a
Jackson Labs GPSDO (as defined on page 40 of the user manual:
http://www.jackson-labs.com/assets/uploads/main/LC_XO_Manual.pdf). A
value of "6" indicates a proper lock.

It can be seen that index 6 of the GPGGA does not actually reflect the
GPSDO lock state in a meaningful way. The USRP was already running for
some time and the GPS module already knew where it was located. It
however did not have an accurate time yet (as indicated by the
2006-01-01 date in the SERVO and GPRMC sentences). In an application
waiting for a lock this bogus time would then be used to set the next PPS.

Afterwards the SERVO sentence starts to change and after some time
arrives at a proper date with a proper lock.


I'm wondering how a good solution to his could look like. The SERVO
sentence is obviously specific to the Jackson Labs module. Other
(internal) GPSDOs might behave differently (they do exist...). Otherwise
I would have recommended to change the "gps_locked" sensor to use the
SERVO sentence instead of the GPGGA sentence.

Best
schneider


Logs:

1637105473: Mi 17. Nov 00:31:13 CET 2021
SERVO: 06-01-01 0 45293 0.00 1.00E-08 10 5 1 0x38
GPGGA:
$GPGGA,002547.00,XXXX.XXXX,N,XXXXX.XXXX,E,1,04,11.8,306.2,M,46.2,M,,*58
            get_mboard_sensor("gps_locked", 0)---^
GPRMC: $GPRMC,002548.00,A,4808.8745,N,01134.7031,E,11.1,79.2,010106,,*3B

[....]

1637105608: Mi 17. Nov 00:33:28 CET 2021
SERVO: 06-01-01 0 45293 0.00 1.00E-08 10 7 1 0x38
GPGGA:
$GPGGA,002801.00,XXXX.XXXX,N,XXXXX.XXXX,E,1,06,1.3,548.2,M,46.3,M,,*65

1637105609: Mi 17. Nov 00:33:29 CET 2021
SERVO: 06-01-01 1416 45293 0.00 1.00E-08 10 7 2 0x20
GPGGA:
$GPGGA,002802.00,XXXX.XXXX,N,XXXXX.XXXX,E,1,06,1.3,548.1,M,46.3,M,,*68

1637105610: Mi 17. Nov 00:33:30 CET 2021
SERVO: 21-11-16 1417 45293 0.00 2.00E-09 10 7 2 0x0
GPGGA:
$GPGGA,233330.00,XXXX.XXXX,N,XXXXX.XXXX,E,1,06,1.3,547.8,M,46.3,M,,*6B

[.....]

1637105640: Mi 17. Nov 00:34:00 CET 2021
SERVO: 21-11-16 1447 44718 -4.26 -1.42E-10 10 7 2 0x0
GPGGA:
$GPGGA,233400.00,XXXX.XXXX,N,XXXXX.XXXX,E,1,06,1.3,557.6,M,46.3,M,,*65

1637105641: Mi 17. Nov 00:34:01 CET 2021
SERVO: 21-11-16 1448 44667 -4.62 -1.49E-10 10 7 6 0x0
        Jackson Labs GPSDO actually locked -----^
GPGGA:
$GPGGA,233401.00,XXXX.XXXX,N,XXXXX.XXXX,E,1,06,1.3,558.2,M,46.3,M,,*68
_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

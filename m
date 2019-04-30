Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AF062F98F
	for <lists+usrp-users@lfdr.de>; Tue, 30 Apr 2019 15:09:59 +0200 (CEST)
Received: from [::1] (port=43332 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.91)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hLSW8-0005iR-GW; Tue, 30 Apr 2019 09:09:52 -0400
Received: from relay3.gtri.gatech.edu ([130.207.199.162]:50106)
 by mm2.emwd.com with esmtps (TLSv1.2:AECDH-AES256-SHA:256)
 (Exim 4.91) (envelope-from <daniel.lundberg@gtri.gatech.edu>)
 id 1hLSVZ-0005b6-PU
 for usrp-users@lists.ettus.com; Tue, 30 Apr 2019 09:09:47 -0400
X-ASG-Debug-ID: 1556629715-0768e4144b6d4890002-5wTQH4
Received: from hatteras.core.gtri.org (hatteras.core.gtri.org [10.41.22.72])
 by relay3.gtri.gatech.edu with ESMTP id Ys87sy8Y5uEhL4Dv (version=TLSv1.2
 cipher=ECDHE-RSA-AES128-SHA256 bits=128 verify=NO);
 Tue, 30 Apr 2019 09:08:35 -0400 (EDT)
X-Barracuda-Envelope-From: daniel.lundberg@gtri.gatech.edu
Received: from kiawah.core.gtri.org (10.41.31.71) by hatteras.core.gtri.org
 (10.41.22.72) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 30
 Apr 2019 09:08:35 -0400
Received: from kiawah.core.gtri.org ([fe80::c531:9662:df24:eb8f]) by
 kiawah.core.gtri.org ([fe80::c531:9662:df24:eb8f%15]) with mapi id
 15.01.1713.004; Tue, 30 Apr 2019 09:08:35 -0400
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Thread-Topic: [USRP-users] How to periodically write files using USRP and
 GNUradio
X-ASG-Orig-Subj: RE: [USRP-users] How to periodically write files using USRP
 and GNUradio
Thread-Index: AQHU/ukDMadjjEsaLE6k9H6f1DvzOKZUG12AgACORGA=
Date: Tue, 30 Apr 2019 13:08:35 +0000
Message-ID: <c1a23ec59dd04f5c8040f4cd08af1047@gtri.gatech.edu>
References: <CALLKLAPDtvLxHkVwea_c0S9oX3xFkOYwfpbhvS9HTxK+LiEkhg@mail.gmail.com>
 <5CC795B9.4050401@gmail.com>
In-Reply-To: <5CC795B9.4050401@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.41.0.30]
MIME-Version: 1.0
X-Barracuda-Connect: hatteras.core.gtri.org[10.41.22.72]
X-Barracuda-Start-Time: 1556629715
X-Barracuda-Encrypted: ECDHE-RSA-AES128-SHA256
X-Barracuda-URL: https://130.207.199.162:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at gtri.gatech.edu
X-Barracuda-Scan-Msg-Size: 3158
X-Barracuda-BRTS-Status: 1
X-Barracuda-Spam-Score: 0.00
X-Barracuda-Spam-Status: No, SCORE=0.00 using global scores of TAG_LEVEL=1000.0
 QUARANTINE_LEVEL=1000.0 KILL_LEVEL=1000.0 tests=
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.70611
 Rule breakdown below
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-Spam-Status: No, score=
X-Spam-Score: 
X-Spam-Bar: 
X-Ham-Report: 
X-Spam-Flag: NO
Subject: Re: [USRP-users] How to periodically write files using USRP and
 GNUradio
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: "Lundberg, Daniel via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Lundberg, Daniel" <daniel.lundberg@gtri.gatech.edu>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

I had a similar problem where I wanted to measure the phase and magnitude stability of a system over long periods of time, but only needed small chunks of data to characterize the drift.  I solved this by creating a top block that uses the head block and a file sink to write a defined number of samples after doing some other processing.  That block was called by a loop like this:

def main(top_block_cls=phase_diff_measure_filechange, options=None):

    for x in range(0,600):
        time.sleep(8)
        tb = top_block_cls()
        tb.start(1000000)
        time.sleep(2)
        tb.stop()
        tb.wait()


The only other trick was to make the file names of the files I was saving contain a time stamp, which was done within def __init__(self): in the variables section like this:
self.file_phase = file_phase = path/phase"+datetime.now().strftime("%Y.%m.%d.%H.%M.%S") +".dat"
self.file_mag = file_mag = path/mag"+datetime.now().strftime("%Y.%m.%d.%H.%M.%S") +".dat"

Those timestamp commands required "import time"

There's probably a more elegant way to do this, but it got the job done.

Hope that helps,

Daniel P. Lundberg, Ph.D.
Senior Research Scientist
Georgia Tech Research Institute
Sensors and Electromagnetic Applications Laboratory
Intelligence, Surveillance, & Reconnaissance Division
404.407.7613
daniel.lundberg@gtri.gatech.edu


-----Original Message-----
From: USRP-users <usrp-users-bounces@lists.ettus.com> On Behalf Of Marcus D. Leech via USRP-users
Sent: Monday, April 29, 2019 8:24 PM
To: usrp-users@lists.ettus.com
Subject: Re: [USRP-users] How to periodically write files using USRP and GNUradio

On 04/29/2019 08:08 PM, Mark Wagner via USRP-users wrote:
> Hey all,
>
> I'd like to know how to write short files of streamed USRP data 
> periodically using GNUradio. For instance, I'd like the USRP to 
> automatically record 5 seconds of data every 10 minutes. It does not 
> matter to me whether the USRP is constantly on and most of the data is 
> being discarded, or if the USRP wakes up every 10 minutes to record 
> the data before sleeping. Whichever is easiest to achieve is fine by 
> me. Does anyone have experience doing this kind of thing?
>
> -Mark
>
>
>
> --
> Mark Wagner
> University of California San Diego
> Electrical and Computer Engineering
>
>
If you're using Gnu Radio, you can simply use the file sink, and have it record to "/dev/null" most of the time, then have something (perhaps via
   the XMLRPC built-in feature) change the filename to whatever your desired filename is, and then revert it back to "/dev/null".

I think I said the same thing on the discuss-gnuradio mailing list a few days ago.

The usrp-users mailing list isn't the best place to ask Gnu Radio questions, a question like this, which is inherently radio-type agnostic, probably
   belongs on the discuss-gnuradio mailng list, because it's more about "how do I make Gnu Radio dance".



_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

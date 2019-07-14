Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8915E67FE0
	for <lists+usrp-users@lfdr.de>; Sun, 14 Jul 2019 17:35:45 +0200 (CEST)
Received: from [::1] (port=34468 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hmgXP-0006Tk-FN; Sun, 14 Jul 2019 11:35:43 -0400
Received: from sonic314-23.consmr.mail.ne1.yahoo.com ([66.163.189.149]:38262)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <d.des@sbcglobal.net>) id 1hmgXL-0006NV-SL
 for usrp-users@lists.ettus.com; Sun, 14 Jul 2019 11:35:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
 t=1563118499; bh=fxljxL+KIepzRYKasiJ1R3FSCIhCPGPSbWntK5sOERM=;
 h=Subject:From:To:Date:From:Subject;
 b=moeNvAssk1rrec03wmd9op171ho8JlbYxZSq3Ksy4xFkUz0pBWSJmAOJ6fl3SWRJ67CPafO6arOwU9mWlmRhp5dRzKHWWksruJvykyqgj/CVrFZdOB+WqoqlUB6N4aXClq2/8iTjlEXcNGTnsHt3vDO7Cx4LtVs5REcxNKnAhApqwzVoALyNN1okbXJivUBUN80enclh0R/ktpgMY7QvZUoNaBuKfk6p4lX/0LgxogSRD8FTI1+f2oKn2KG4S0iGImlNCyEP0lMECET4wt+63qq0/1iktijyYXqeOR4vgN2Kp9T0KVrxRNBL13YKWo1vS1NKBtdvXEd1mH7XKfT0ig==
X-YMail-OSG: 7sl9_RYVM1nXJTlXNWrsGTTl2D6fvJt6VWC.4jglf7_VKRY9DfI8_rxlnsVABN1
 _vl0y8.7L5C_kj2ZxWgM.ax57EWmPta3WxrKxWRro7EEe1sPTeNgzmdBxSnTths7mU.cFT6PhbB8
 OzDfgWwOEC6mICM74c_bMM5ZC_IUb4efLJ2Mo8yVCfnRNxyAnpIeEljOpSGZIwoYME0jQjWpu8Os
 7ji3vJLQldTPd7TCuwIh5wgkYKV4qSjszPCvFe9GEzRmdFMV5QR6Ew3z4fblZw6g4cdM_GM1C.A9
 Ye9nzTzj24pjLsPHfJ3Je6TKRpvmWbMF_nQSs0o7NqStEvYiDT.bTv63j4wtnAsnUo9GCOfTYZo3
 3BaHr_4gs9Qzc4Ck_VvVRkaKJ2IHrYNH0kmBQWmGEwH2ygr87FCctdPAaL60QDPG5XKY7IPq0cpU
 S4XFctdxs9xsLu0tzqHppxU5wNFdz7fgyUOUdc7hJNUXP6zawQyD7n6oG6o8vvti8pCpebyEJ1ez
 Bcu7i3Gk5wi4vK3p.iYHw8ZHIfCPZtb4Vmp8oVxqcyPsIgTLHeHIOtD1tjL0QKxnFKkwBaTXmGng
 vl4bfKAPBIzzxu6T53O._0Rt2KmzoPVeK9U2kZUCCW9Gl6DB4lk2mcU.mGxfvI2Yp5lCzrMNbILD
 o3WOKq7v7qiYrxC_Dxs_Ubdwa00yEPzCXIwp1fFGxunnEgYny3Uv6UVNaTtXIGmtfVRQ1zL1znIA
 hlKD3G5EIoiIiGnpW.1.L9XNyDk8gdICkgNCc8S_AjSwgsvP1w2dErXI5X2XChGoYaFY7MBcMJZw
 f2gst2pSsZBCg5AI1TGgM9u7oJZDdBXgQHitrC0nFOJA7UG_bkp6JSGXfiPgGmvNQAHx_H.RlhQw
 gQvYx4fdXZZoUIfuiU9DD.sXufLuqR_Af59bSmGH_5D90JtIVYAyyfDVgEHZlpmr6Mfkt6OdhptL
 TObKpReQMu5fht2k280b_afpFynmloSwdSeAW.Q7BKmUqjr28UHBdBYjclLJYJGHus819zjV3SNr
 iiV7V9lrB6blNz2tqn96zMHNLVeeObc102puljJWNHOcoVB5IB.g7xRRituUVB5HfB_oGoqXk._X
 VGcPL8ShfgGH8Y4LqecFMrI94jL9D8BUgvllWK2c9DVWlJrYvQ.FU4Tgll7poBerTKV7URpqV75a
 tWHZt1wKulY3kv7O1_iPnqvs5ckpclY7nmSGvJZhC0CbDvrNT2KU1CgqPnvrq1_S6chSilooswpL
 PqrVq1dm0nV_TFD1fYpS1mzt8M4toRz_kFnSpB9xwgueQcg1Va8OTik.6PHBOl78YbMjpa.w-
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic314.consmr.mail.ne1.yahoo.com with HTTP; Sun, 14 Jul 2019 15:34:59 +0000
Received: by smtp414.mail.ne1.yahoo.com (Oath Hermes SMTP Server) with ESMTPA
 ID 1aec76ec857611661cdb37f4b022da3e; 
 Sun, 14 Jul 2019 15:34:56 +0000 (UTC)
Message-ID: <6a891a513eb25be83a56a036534ba8f9b78e0683.camel@sbcglobal.net>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Date: Sun, 14 Jul 2019 15:34:54 +0000
User-Agent: Evolution 3.32.2 (3.32.2-1.fc30) 
MIME-Version: 1.0
Subject: Re: [USRP-users] RFNoC on E310
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
From: "d.des via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "d.des" <d.des@sbcglobal.net>
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

I've wasted a lot of time on this over the past month with the same
goal and am just now getting up and running using the sd card image at 
http://files.ettus.com/binaries/cache/e3xx/meta-ettus-v3.15.0.0-e310_prerelease/
and a recent pull from git: commit
6563c53743617215a18542db7d7050a04a0d409d (HEAD, tag: v3.15.0.0-
e310_prerelease).

It seems that Ettus no longer offers pre-compiled RFNoC images. The
good news is that if you have a Linux machine with a lot of disk space
it's pretty easy to get up and running with the free version of Vivado
and build the images yourself for the E310.

The documents you've referenced are well written and still provide good
guidance but are out of date. It's worth some time to go back over the
mailing list archives, particularly the E310-friendly release
"announcement" at 
http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/2019-May/059897.html
Even then there are a few key bugs that keep it from working out of the
box but are easy to fix, I've described them in a few posts over the
past few weeks so you might look those up. Gnuradio isn't supported in
this SD image or cross-compile SDK so you won't be able to run those
examples but the UHD interface is pretty good and works for me. If
you're willing to learn how to use something called "Docker" (I don't
have the swap space for that at the moment) you may find that it's
possible to find or create an updated SD image with bugs fixed and
additional packages that you need. I couldn't figure out how Docker
works with the scattered UHD archives and tried to cross-compile the
requred packages myself. I managed to get CPPunit built but then it
wanted more packages that started leading down a dependency rabbit hole
so I decided to abandon Gnuradio for a while.
 
Given the number of requests just like yours that pop up on the list
and usually go unanswered, it would be really helpful if Ettus
documents known to be misleading and slated for update would be
indicated in some way in the document headers -- or even on an Ettus
blog -- but for now it seems that the best way to learn about important
configuration changes is scan the list often.

Good luck!


_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

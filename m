Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B10DF315029
	for <lists+usrp-users@lfdr.de>; Tue,  9 Feb 2021 14:29:15 +0100 (CET)
Received: from [::1] (port=35056 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l9T4p-0002G5-M2; Tue, 09 Feb 2021 08:29:11 -0500
Received: from mail-ed1-f42.google.com ([209.85.208.42]:43266)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aaron.rossetto@ettus.com>)
 id 1l9T4l-0002Ac-Tq
 for usrp-users@lists.ettus.com; Tue, 09 Feb 2021 08:29:08 -0500
Received: by mail-ed1-f42.google.com with SMTP id s26so17783294edt.10
 for <usrp-users@lists.ettus.com>; Tue, 09 Feb 2021 05:28:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=NVCxl9G2vKCKJOwN4C1JE5lUFN+OkPDRbTzXHu3heQk=;
 b=II8NrKGbQnGONmIETv+aS9KLrd1Yrs0Pan6Pm0epsEAClVXsP0CQmrk8QV1SV/bKu1
 p6vRA+ZiqHRnyBAde/BLsB+Zp4VFycRaOczsA1TduOQqkofflRsqZf0d2syJ/kDAgffO
 3v6JzCYM3+y8aj6S68Bnq+32X6xSAn++O1AGA+AYYGKAkTGzkBDu0h3iq8jSRklev7Yj
 7RXPCqyycrHCQzhWr77wxq4PTwxBIHiRm7UwCZSrSa2c/iM5Jiz/XV01bt1AQ9owQQhY
 mIx0nBy9V25q8qdsM8ZLI/ZCiu+Yg0c4UHRbE1u2+vKnjS3vkBs5BYwv/m5k5Bpkb7Vu
 jRXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=NVCxl9G2vKCKJOwN4C1JE5lUFN+OkPDRbTzXHu3heQk=;
 b=CrXyV4ySGt8jRoTWFwub1blw1zfOMRuqlFFuQPMTtFOdtCSHjGJrviNJxKDIshIipY
 rW5EzOOoqjCgcoWsPbDb76Yulu+XhKJwadXxeTFmKroUt4fjePC3sCso/4iCAUrJPjgz
 SK/28TMNr/o54cMOLgT8xCCFCM3/DEdxMEWtPzB4JfQerSPdxQyFQcBwb+p9PaBco648
 qwMmJgN0nQ8nbd/iGvA1NmFU0nO09hC9Qt/dLTS+3ev8v/qK4z92MHEDTiT6+SZDprxn
 i6yOgT72Aqgutdn6PqXwY8z52Dk3p0rrmXqw9f5p7jN79ChcxdhtonYC+r4dbNhlhOW1
 xfRQ==
X-Gm-Message-State: AOAM532smArrEpKGlw1j0wMKTtmFMilC7OEtUVva1d6RV8vJuucK6HYY
 SBBOi52euUkE/AyH1UgHSe0wEhhhkYmHW4+1Xsv0T3dnH049Q77s
X-Google-Smtp-Source: ABdhPJziYCdzYNe5FxTJ+HvN04LtrUba8Cp7BP2Py6HqBaQUMa1uZcfG8voIhIHZWzal4NEz5VHGrWk2ULQMOzA/NhA=
X-Received: by 2002:a05:6402:2210:: with SMTP id
 cq16mr7840104edb.148.1612877306796; 
 Tue, 09 Feb 2021 05:28:26 -0800 (PST)
MIME-Version: 1.0
References: <580D94C5-BA72-4A10-8CFA-274AF428B90D@contoso.com>
 <CAEXYVK6Ohh=7u1Xmq-=XGzFdj3tV0NXocjkqrdP3ruUZfdnhWw@mail.gmail.com>
 <732FCEC8-8D56-4C2F-BA42-5BB9149E0003@hhi.fraunhofer.de>
In-Reply-To: <732FCEC8-8D56-4C2F-BA42-5BB9149E0003@hhi.fraunhofer.de>
Date: Tue, 9 Feb 2021 07:28:15 -0600
Message-ID: <CAAg5+MwfkGUVg8DNWJ8951q3quzS+0FVEUnJB1yzsQBadK8gRQ@mail.gmail.com>
To: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] RFNoC 4 rfnocmodtool
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Aaron Rossetto via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Aaron Rossetto <aaron.rossetto@ettus.com>
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

On Mon, Feb 8, 2021 at 5:35 AM Askar, Ramez via USRP-users
<usrp-users@lists.ettus.com> wrote:

> Is rfnocmodtool made to create a completely new module, or it is also support adding the provided modules from Ettus, such as FIR, FFT, etc to the design? I am asking as I have noticed  that the RFnoC modules are supported for C++ application, however, a limited subset appears in the Gnuradio Ettus OOT module. How do I add the rest to Gnuradio?

rfnocmodtool is intended to help you get started creating a new RFNoC
block. The tool provides some boilerplate Verilog code that provides
the 'shell' of an RFNoC block, some boilerplate C++ code for creating
a block controller and bindings to use the block with GNU Radio, and a
block definition .yml file which is needed to integrate the block into
an RFNoC design.

If you want to use a new IP core in an RFNoC design, you'll first have
to create an RFNoC block and adapt the IP core to the RFNoC block
standards. Integrating that block into an RFNoC signal path requires
modifying the .yml file that describes the collection of blocks for
your radio's FPGA image and the connections between them. (For
example, for the X300 series of radios, see
fpga/usrp3/top/x300/x300_rfnoc_image_core.yml in the UHD repo for how
that is specified.)

Once again, I *highly* recommend watching the RFNoC 4 Workshop video
that I linked in a previous message in this thread, which walks you
through the entire process of creating a new RFNoC block, integrating
it into a radio image, and then interacting with the block controller
from GNU Radio. It essentially details every step that you will need
to perform.

Best regards,
Aaron

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

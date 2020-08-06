Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6875D23DB06
	for <lists+usrp-users@lfdr.de>; Thu,  6 Aug 2020 16:03:38 +0200 (CEST)
Received: from [::1] (port=51262 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1k3gUX-00069q-OG; Thu, 06 Aug 2020 10:03:33 -0400
Received: from mail-oi1-f169.google.com ([209.85.167.169]:36009)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <neel.pandeya@ettus.com>)
 id 1k3gUT-000644-AS
 for usrp-users@lists.ettus.com; Thu, 06 Aug 2020 10:03:29 -0400
Received: by mail-oi1-f169.google.com with SMTP id l204so14179588oib.3
 for <usrp-users@lists.ettus.com>; Thu, 06 Aug 2020 07:03:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=y13jtNXEYrILLPTIJ9rST140uMo/L5n0Bq7qYPHzenQ=;
 b=Ps4zct32IIJAAFCDDFL5VPhB5pL8Hr4pSCgSe8OMQ/JQul6EPuWQCu3m1xGp1LYiu+
 9GXpqKyIy3KjLBTk8ProhIdh+yKGjkVnwCIttClTlTHyyn36MKVWZJgNz4eyAjNk9pRk
 C3kQFz45KGL2F3IgZifA77gFN8VRFzbsKy7qEPtMzK6qWtrNNOPD6vE8TT2xcDGveWZC
 ZxpIW/nvCcLW5MEyVKwb8A5L/G6GolFzMztOmBOE9EsQPweRP+RMkMTc9eYcTSK18R5c
 qNNOPXR5KHS3rP1Jf04PnI2F4db6srCHN0gyl3S9EAWAjDpjhXJ9XnLiklw43zhzdc23
 R0Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=y13jtNXEYrILLPTIJ9rST140uMo/L5n0Bq7qYPHzenQ=;
 b=BavNJ+FhReOh+lic1RVaj3e2aLoUpmMGPns9I1AALmcsTCIyMVf9hYmAmBZ484aIPU
 ga5hDrwQ2iKDdmTZIAkIuI5whSsAw3tHYgh8PBJEWvsRYJHty/jb5d0WH2NPzrgBThKr
 jm0PZrR972oHyYEp9SdfpjzS9PbFPMGfJv+UpIOs4WnKKHKIRh9fqadr/vd8f7+Epww4
 UHGjU/3vOmIo7NT0c/zdKv8VkNuZ+DY1wMezufIKnwm69x/JQhdnARQJ/N5pcw2Bqcug
 XJPI03svoWLpuLNjKRyNp6MlLjYbI5NOUsyvk6Pkxk8qE14/EdDva5PrnXhuon54FTT0
 rysg==
X-Gm-Message-State: AOAM531Ck89+rQdQMgB8gkDc+xhghiyoW6XhVBr6Pb8k0M9SEzbhvduP
 hNmP6TqVvlqVBL+VqIma4ITNKLQZ3BcE2fNUcSB76dgcwHDNjg==
X-Google-Smtp-Source: ABdhPJzjieJNdAla5Yhh54o64LHNKMARNSCA06lhCBKwIOvzo/Cex3NylOPk/QRJA0NDkAdaPHdvM219vUrZYqyJlQ8=
X-Received: by 2002:a54:4817:: with SMTP id j23mr7123283oij.140.1596722567676; 
 Thu, 06 Aug 2020 07:02:47 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 6 Aug 2020 09:02:11 -0500
Message-ID: <CACaXmv9Kxwa65-yHTFqvud3x3cv6Ex0q3bN_X=1Osim3YxsiKA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Virtual NEWSDR 2020 -- Next Week -- Wednesday August 12
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
From: Neel Pandeya via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Neel Pandeya <neel.pandeya@ettus.com>
Content-Type: multipart/mixed; boundary="===============7169572936677470200=="
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

--===============7169572936677470200==
Content-Type: multipart/alternative; boundary="000000000000739f1505ac35f124"

--000000000000739f1505ac35f124
Content-Type: text/plain; charset="UTF-8"

Just a reminder of the 10th annual New England Workshop on Software-Defined
Radio (NEWSDR) on Wednesday August 12.  It's less than one week away!

This year's event will be run virtually.  The event agenda includes keynote
speaker Dr Tom Rondeau of DARPA, poster presentations, and three "fireside
chats" on the topics of spectral coexistence, Internet-of-Things with 5G,
and open-source software in SDR.

The event is made possible by generous sponsorship from MathWorks, NI/Ettus
Research, Analog Devices, MediaTek, Lynk, and Verizon.

Advance registration is required but is completely free.  Registration ends
on Sunday August 9, so please register ASAP.

More details and registration available on the event website.

https://newsdr.org/workshops/newsdr2020/

We look forward to seeing the community there!

--Neel Pandeya

--000000000000739f1505ac35f124
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Just a reminder of the 10th annual New England Workshop on Soft=
ware-Defined Radio (NEWSDR) on Wednesday August 12.=C2=A0 It&#39;s less tha=
n one week away!<br><br>This year&#39;s event will be run virtually.=C2=A0 =
The event agenda includes keynote speaker Dr Tom Rondeau of DARPA, poster p=
resentations, and three &quot;fireside chats&quot; on the topics of spectra=
l coexistence, Internet-of-Things with 5G, and open-source software in SDR.=
<br><br>The event is made possible by generous sponsorship from MathWorks, =
NI/Ettus Research, Analog Devices, MediaTek, Lynk, and Verizon.<br><br>Adva=
nce registration is required but is completely free.=C2=A0 Registration end=
s on Sunday August 9, so please register ASAP.<br><br>More details and regi=
stration available on the event website.<br><br><a href=3D"https://newsdr.o=
rg/workshops/newsdr2020/">https://newsdr.org/workshops/newsdr2020/</a><br><=
br>We look forward to seeing the community there!<br><br>--Neel Pandeya</di=
v><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"><br=
></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif=
"><br></div></div>

--000000000000739f1505ac35f124--


--===============7169572936677470200==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7169572936677470200==--


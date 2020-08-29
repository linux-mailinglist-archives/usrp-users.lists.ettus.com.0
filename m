Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B20232567D8
	for <lists+usrp-users@lfdr.de>; Sat, 29 Aug 2020 15:14:22 +0200 (CEST)
Received: from [::1] (port=57042 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kC0gT-00011B-RM; Sat, 29 Aug 2020 09:14:17 -0400
Received: from mail-ed1-f43.google.com ([209.85.208.43]:41092)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <danielozer22@gmail.com>)
 id 1kC0gP-0000ws-Sj
 for usrp-users@lists.ettus.com; Sat, 29 Aug 2020 09:14:13 -0400
Received: by mail-ed1-f43.google.com with SMTP id ay8so1516301edb.8
 for <usrp-users@lists.ettus.com>; Sat, 29 Aug 2020 06:13:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=SvkW1hlR+SkncaIhOkAr1/dKafUw52n+6N4DGQdH50Y=;
 b=DC8swkMT2lo9ySmZKDGfQ2JKIjyYz41kkYKhQ2lObKv4pMFCgt/+LTXG3kyTjp/8j2
 +IYbJFfSncxdqZBdIEIST1RrLdgD3W4ue4na9N5hgPaKFo+yrLCg9Co9a86+f8S01gmr
 PXjyVDNMrGXtuWC1vcHXOxJaf8OWD1ifOhDxLyr7euC5x7gvGC/SySglmJ/ozKRNybRU
 UJaV+pqE+fzB5bCJ3sO6AUfp4wUJoZ/CRg8tQdn7878NaMQYFVwOA973du3aRkXZEuiJ
 fVcGPOe6HL3kfdJD0THt/8yBJXP28abDyJV8nNtCr+JX8h4kcbNzUv4u4Qu/G4ft+nR1
 l1hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=SvkW1hlR+SkncaIhOkAr1/dKafUw52n+6N4DGQdH50Y=;
 b=GiDu0sf4A/YWt51vXCs7v653yXKvdVACnV1CaLoZD0trnFoGgk6BdNDz2hkfAyNqdO
 1mtmDGM/L+XhZS3QWSoRu29RJBe9OabKEH4jmjIsjWn0vmBcxS3rhVtCwSQF7moRjxT6
 /uSbmep3A1DZGhwP+qa72q8M4k5I/x5Wvo32tGRyElf2vrzM5Ofpj3p0R4rEURFz93ZA
 eVMPcQw+v9rhIWqtjGQboJPbXhPe80+SuZAMTpWwA7+7UDBl3FN/PQItply0Xdihh/0S
 O2oYEXbwMYBCVZUxKqEf1U6Jb2bEkouWVV3pTCpcUDwK7EbMWL3KObkgw0r50hcnqOi6
 owrw==
X-Gm-Message-State: AOAM532GUS3U7Z92M/TGTFa4ikS9MH83qopDjqa+drqYD/5cPyOqU4bj
 Zgs6CkHmH5OEMlNz4roCKbNKMWE5c/lqpjIBpDPRXUXT44k=
X-Google-Smtp-Source: ABdhPJwJySL/pwwfCwHXXS84LR44xL7O0MVKeDRglY7vlVNosuDfVXYqmuvJF1ygjKlcdmBMEV03ZlsDlvJApzk/pi4=
X-Received: by 2002:a50:b2a5:: with SMTP id p34mr3421576edd.385.1598706812394; 
 Sat, 29 Aug 2020 06:13:32 -0700 (PDT)
MIME-Version: 1.0
Date: Sat, 29 Aug 2020 16:13:21 +0300
Message-ID: <CAE_Rk54pzLLicvk6Hw5Az=1hbfWfSfEd7YczZ40sC+E1OO=wJA@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: [USRP-users] =?utf-8?q?rfnoc_data_type=E2=80=8F?=
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
From: Daniel Ozer via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Daniel Ozer <danielozer22@gmail.com>
Content-Type: multipart/mixed; boundary="===============7163737120590891632=="
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

--===============7163737120590891632==
Content-Type: multipart/alternative; boundary="000000000000a7217f05ae03efbf"

--000000000000a7217f05ae03efbf
Content-Type: text/plain; charset="UTF-8"

hi everyone ,
i have several question regarding to the rfnoc data type:

1. what is the change if  i pass data through rfnoc block as a byte type or
as a sc16? Is there a change inside the fpga ?

2. At least in my uhd version the rfnoc: duc has only one type which is
fc32 . can i change it to sc16 or anything else?

3. If i pass data as from SW to the fpga as sc16 there should be any
condition? like the, data has to be from -1 to 1 ?

--000000000000a7217f05ae03efbf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"rtl"><div dir=3D"ltr">hi everyone ,</div><div dir=3D"ltr">i hav=
e several question regarding to the rfnoc data type:</div><div dir=3D"ltr">=
<br></div><div dir=3D"ltr">1. what is the change if=C2=A0 i pass data throu=
gh rfnoc block as a byte type=C2=A0or as a sc16? Is there a change inside t=
he fpga ?<br><br></div><div dir=3D"ltr">2. At least in my uhd version the r=
fnoc: duc has only one type which is fc32 . can i change it to sc16 or anyt=
hing else?</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">3. If i pass da=
ta as from SW to the fpga as sc16 there should be any condition? like the, =
data has to be from -1 to 1 ?<div class=3D"gmail-yj6qo"></div><br class=3D"=
gmail-Apple-interchange-newline"></div></div>

--000000000000a7217f05ae03efbf--


--===============7163737120590891632==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7163737120590891632==--


Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 531932DB59C
	for <lists+usrp-users@lfdr.de>; Tue, 15 Dec 2020 22:09:12 +0100 (CET)
Received: from [::1] (port=42774 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kpHZD-0003yJ-UI; Tue, 15 Dec 2020 16:09:07 -0500
Received: from mail-ot1-f43.google.com ([209.85.210.43]:41489)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <robertbenwilson0@gmail.com>)
 id 1kpHZA-0003qS-2P
 for usrp-users@lists.ettus.com; Tue, 15 Dec 2020 16:09:04 -0500
Received: by mail-ot1-f43.google.com with SMTP id x13so20848643oto.8
 for <usrp-users@lists.ettus.com>; Tue, 15 Dec 2020 13:08:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=n9vEZIP+N1gxU3f2zhGk2AThmUzDCo2bYSnDxpPO6q4=;
 b=sAdtOpSwS0Mg+PIJj4MCMwqyHYIyf5oybJOhGKlaktefi4r3zhgLVSch6ggaHToRZG
 OGP+RQ0im4oTyN04KgZ9V7ZHE8qnpuzPqG6I8V01g09uYnqZ1koYFTmPYOCc6nGhsqpR
 CllCHBnVC03gB+3smigeWh10fdVHcxHCaRaTxv0sebs2P4fDJk8XPm1ROg4uKG+AShsA
 qOcSLt57/sgODY9Yp0e7d5vSKwkBYNAo6UuwApy5JL5XKteFQ+kXhIej8hr4u2/foJ6D
 AS+jUBhxSfYKlrBnOxdGfRohr/lC2oo1dyJ1AwdJ9sAwu4d5swlLHJzK+L3wVtRZFpEZ
 JvVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=n9vEZIP+N1gxU3f2zhGk2AThmUzDCo2bYSnDxpPO6q4=;
 b=ucvqstR7G9ufEC7yKdJMoz89dbZfmLM5OgAJp31KmBTA/y1tV1At19k+Ef+mZSun3W
 w+KfH4oBpq8HbiCjNRnhergn0mAE4/c1abtdnW47sxfShCfCjlKhI0PGDZYYvKv9Ztw0
 xsMk1+/qNFPURL/rdlwBipe0H5RxXL3lUj/hCC+Jc9ko82nPjlB7aDUkLK+iod6p6xDr
 tTbTtvnAN3VvIna3hScW/cztjSpbnjk2eZL28iutpCH7Tu5HLF1Opj3GZHEqiA6PescC
 AA0h8UcC7Cj4JohNh9UH6905dM6kyNeUSUN1T3aP9XnWbcfoflSea1gR1EmvdCnrpwOe
 pCEg==
X-Gm-Message-State: AOAM533qHfYEzLVn2M3u3DmllWyC4WlVaU/ElzUM2ytgZYN/MfgzYcqX
 d+EYXzTMytuW13kiKRQQAs6MmFTgALJm22etUL+EjBR3
X-Google-Smtp-Source: ABdhPJzvWHljh5xc74ddbRRUlXkvzsUOalci7yr3MdoO32C83BGNvCX9IfEWiYzEBPhugduUVScLnb5b6AyDpTJ5GQo=
X-Received: by 2002:a9d:2607:: with SMTP id a7mr24441782otb.222.1608066502592; 
 Tue, 15 Dec 2020 13:08:22 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 15 Dec 2020 16:08:13 -0500
Message-ID: <CAGJu-nZvZ4S41VGUBC5EkfU6tHKSeNEuZM-R=EaAFt9m9b98BA@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] RFNoC DUC arguments
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
From: Robert Wilson via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Robert Wilson <robertbenwilson0@gmail.com>
Content-Type: multipart/mixed; boundary="===============0996247891422227367=="
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

--===============0996247891422227367==
Content-Type: multipart/alternative; boundary="000000000000a98c6905b6872888"

--000000000000a98c6905b6872888
Content-Type: text/plain; charset="UTF-8"

Hello All,

uhd 4.0
gnuradio 3.8
ubuntu 20.04


When in GnuRadio and attaching a RFNoC Digital Upconverter to the  RFNoC Tx
Radio Block we are receiving an error message:

TypeError: make() takes 4 positional arguments but 5 were given

Is this a known issue? How do you correct this?

Thanks,
Ben

--000000000000a98c6905b6872888
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello All,<div><br></div><div>uhd 4.0</div><div>gnuradio 3=
.8</div><div>ubuntu 20.04</div><div><br></div><div><br>When in GnuRadio and=
 attaching a RFNoC Digital Upconverter to the=C2=A0 RFNoC Tx Radio Block we=
 are receiving an error message:</div><div><br></div><div>TypeError: make()=
 takes 4 positional arguments but 5 were given</div><div><br></div><div>Is =
this a known issue? How do you correct this?</div><div><br></div><div>Thank=
s,</div><div>Ben</div><div><br></div><div><br></div><div><br></div></div>

--000000000000a98c6905b6872888--


--===============0996247891422227367==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0996247891422227367==--


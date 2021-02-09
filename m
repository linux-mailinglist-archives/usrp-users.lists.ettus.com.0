Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C2131502D
	for <lists+usrp-users@lfdr.de>; Tue,  9 Feb 2021 14:30:40 +0100 (CET)
Received: from [::1] (port=35070 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l9T6F-0002Xg-KG; Tue, 09 Feb 2021 08:30:39 -0500
Received: from mail-oi1-f179.google.com ([209.85.167.179]:45342)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ashutoshsingh7589@gmail.com>)
 id 1l9T6B-0002Qx-MO
 for usrp-users@lists.ettus.com; Tue, 09 Feb 2021 08:30:35 -0500
Received: by mail-oi1-f179.google.com with SMTP id m7so19364294oiw.12
 for <usrp-users@lists.ettus.com>; Tue, 09 Feb 2021 05:30:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=Hx7L3162f0fGTz9BCU2YMCAEZszshhSRIBN+hkA7cEo=;
 b=LPq1vv9znPsNXj0UM9ippZaCRzIbft3HKIjGbVwQWAmbXScVGRovR0z0qGVVkapuZ9
 YE83NFxHMUyVIhh8aCmjmfHM66Nm+FJ9csKb2OHK5L7r1QZ0NlGJtuPa3QrM9NafYUp1
 03gixzJcUvR2pGPIoHJswJAcNHMcTuUSKZRY1JNuEvb3l1fHO+vKSV5d0DZqlo1tLIfX
 AXSeHnNfa7nUjgSvQBOHs0UohoD0641BgJmjiCDbN5BEjqcNAXaKfPe3daWMRDGQD419
 qjTKrzyI8oPPrD57cd8/uqEvzA8iDUn4b98dnrDBOVj7+X5K4lCFBMpt5nLkXDqzLGUX
 5a5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=Hx7L3162f0fGTz9BCU2YMCAEZszshhSRIBN+hkA7cEo=;
 b=EbXB659PIwOLG4dJSkjYZqA7PZy8/0dNtajCX8//94eZoTz74pDpkSImhHQSpp7gd5
 f3L2BaYkd7Co/N7xVDYOoSOisa1oOHnyCj+SxTueroD5mmpPw+gh1d0MtBrxUio/OWM0
 JF1XgOlGgRnHbQDmVRvJ/zgtN0FKL0qQRj8o8VK8ck/gnYpSlwVqVeyEU88XnHmrjQRB
 kFMdS0s6rRFKP05QcGCsNdb3XYsWGOF1OeH3zMD+chr5onri7flGgZiGoGAC+PE2jMv+
 Xz7xyQqaCI9cG1iiD6DxOBE6XaU3w+4moeZdULRh0Mf8P/mwhUmWIMeuF5RQwnUhAbI0
 Z6Sw==
X-Gm-Message-State: AOAM530+oA/NToNk+VGnTIxEFh6DQHtO7/Zl2UzApCAE4D9xRN+HHtLp
 pVtCzKQa6K3Gil3BByFcqZkdpXtxMKYSV7j4q/LGOB3NOqQDVw==
X-Google-Smtp-Source: ABdhPJwJuS1qokLtS92LSztKDfI2JxscbnS2sjBPanubAcDU+n1DZ5vaPEeQf6OWHYsuJ2Ma7FAyjtG1QC6wNTjwkOE=
X-Received: by 2002:a54:4e87:: with SMTP id c7mr2386989oiy.94.1612877394537;
 Tue, 09 Feb 2021 05:29:54 -0800 (PST)
MIME-Version: 1.0
Date: Tue, 9 Feb 2021 14:29:43 +0100
Message-ID: <CAO38sJ5foRaUoHPyFW11j2WeDjU5n7ZrB3dKm0Co9RrN7eGbtg@mail.gmail.com>
To: usrp-users@lists.ettus.com, 
 openair5g-user <openair5g-user@lists.eurecom.fr>
Subject: [USRP-users] OAI UE and eNB connection Issue (USRPs sync Issue)
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
From: Ashutosh Singh via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ashutosh Singh <ashutoshsingh7589@gmail.com>
Content-Type: multipart/mixed; boundary="===============6329677974129639659=="
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

--===============6329677974129639659==
Content-Type: multipart/alternative; boundary="0000000000002aedc505bae7486f"

--0000000000002aedc505bae7486f
Content-Type: text/plain; charset="UTF-8"

Hi all,

Did anyone get an initial sync issue with OAI UE and OAI enb connection . I
am using USRP B210 for eNB and UE. Please help!!

I dont know what power parameters i have to use to calibrate this setup .
How to go further and solve this problem?

Thanks
Ashutosh

--0000000000002aedc505bae7486f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div>Did anyone get an initial=
 sync issue with OAI UE and OAI enb connection . I am using USRP B210 for e=
NB and UE. Please help!!<div><br></div><div>I dont know what power paramete=
rs i have to use to calibrate this setup . How to go further and solve this=
=C2=A0problem?</div><div><br></div><div>Thanks</div><div>Ashutosh</div></di=
v>

--0000000000002aedc505bae7486f--


--===============6329677974129639659==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6329677974129639659==--


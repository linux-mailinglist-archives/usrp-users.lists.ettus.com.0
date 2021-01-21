Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE862FEC7F
	for <lists+usrp-users@lfdr.de>; Thu, 21 Jan 2021 14:59:38 +0100 (CET)
Received: from [::1] (port=47868 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l2aUr-00064A-TP; Thu, 21 Jan 2021 08:59:37 -0500
Received: from mail-oi1-f178.google.com ([209.85.167.178]:44021)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ashutoshsingh7589@gmail.com>)
 id 1l2aUo-0005rH-9e
 for usrp-users@lists.ettus.com; Thu, 21 Jan 2021 08:59:34 -0500
Received: by mail-oi1-f178.google.com with SMTP id q25so2163892oij.10
 for <usrp-users@lists.ettus.com>; Thu, 21 Jan 2021 05:59:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=BKDfZ3mRoDoG9q5atDZ8hALiV3S9F6Hwr/I26KXvtyw=;
 b=m7OZOU4Rbq6oVc5gRa4IWpxPg6/t5yXosQtdrY70WrWSqPxUUY27whoLoNZesPqiVu
 p2dEN7REoCNIqaziniqt+O9w5rZRahIM5t0TLnl56ljFyFhA7BPPZLDO8e9iSmw9Navp
 ZAjP5O86q8Kw0RTJZm+32oyIAgfm6WBVIWIt9dRY3grYxYj/OROyWQNzM+9JcWlNQJnI
 lstwD1gj8b5lQniDgXyQZ7DwYFSrptDL1cIRY41UyimzA70xA4cRO1b9w8JXTxb/QT+H
 kSf4gYfOvPl4UdmRAzgiJ2x49j7rao+Rmv8WOKZRO7h224HPjPKL0ktO0H5+qOKx/cnE
 8dkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=BKDfZ3mRoDoG9q5atDZ8hALiV3S9F6Hwr/I26KXvtyw=;
 b=iGQ10lUsJU1Bg6ex380wDXeajyJmVcNawv6640jIHL3ouKrJC4C/n+3GO1iygRoOkr
 JoUO2mNgzA9/aytCjOi9FZMZsi5dhK0cj6h0IjGnkPENeb5jRSlcKP7wmbgAfJnfh1A6
 laWjREqNlzCigdTMfVkkt1ETgM4voVkugjCU8YX6dQwAvOSmW/ttIPmnQJim9ub7Role
 SdTpI1ddy9nnOktCldt8XGt2rjebSRQkTggJwn7PlHC188RkiJBGD0eGGX3pYobkT66O
 WEOthMjQlshtgxWe3vkKdRQBsmiAq9gKfAlbxDVX2FeNxfZVAdQRjdBQfX0UKlUNfWgT
 kELQ==
X-Gm-Message-State: AOAM5311VpbZgvPlPlQyBE0Riu1XFkpNgTXKHjJ6rqrP3UJNGwhDdRIQ
 t6lXR5k5fM9dgeXKcUYZXUbNKqJ4ZJBwS9s1/3A3SIX8Xnw/fgJT
X-Google-Smtp-Source: ABdhPJzTSidmgHgrO8I4rrD/r0IXGtuMLJg6CMiWaYen3k8uOjN0tMconfbluF5kOz/YIP5/evLgU71LX0MwNizdcjk=
X-Received: by 2002:a54:4e87:: with SMTP id c7mr5165838oiy.94.1611237533450;
 Thu, 21 Jan 2021 05:58:53 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 21 Jan 2021 14:58:42 +0100
Message-ID: <CAO38sJ5uK-QsVKtOEbK=9rwqNR6rooyymMOWOeFmo9o=J8id=Q@mail.gmail.com>
To: openair5g-user <openair5g-user@lists.eurecom.fr>, 
 "openair5g-nr@lists.eurecom.fr OAI" <openair5g-nr@lists.eurecom.fr>, 
 openaircn-user <openaircn-user@lists.eurecom.fr>, usrp-users@lists.ettus.com
Subject: [USRP-users] RF based OAI ue not connecting with OAI enb
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
Content-Type: multipart/mixed; boundary="===============6349934214847921587=="
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

--===============6349934214847921587==
Content-Type: multipart/alternative; boundary="000000000000d484a605b9697843"

--000000000000d484a605b9697843
Content-Type: text/plain; charset="UTF-8"

Hi all,
I am trying to setup OAI UE with OAI enb . I am not able to connect my UE
to eNB . I feel its a problem of power calibrations . Can any know what all
power parameters i should use ?

I am using B210 USRP for both UE and eNB.

Command to run UE : ./lte-uesoftmodem.Rel14 -U 1 -C 2685000000 -r 50
--ue-scan-carrier --ue-txgain 70 --ue-rxgain 80

Command to run eNB: sudo -E targets/bin/lte-softmodem.Rel14 -O
targets/PROJECTS/GENERIC-LTE-EPC/CONF/enb.band7.tm1.50PRB.usrpb210.conf
2>&1 | tee FDD-enb.log


Parameters I want to know:

*eNB:*

pdsch_referenceSignalPower
tx_gain
rx_gain

Or any other parameter that you think can be helpful?

*UE:*

ue-txgain
ue-rxgain


Thanks
Ashutosh

--000000000000d484a605b9697843
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div di=
r=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Hi all,<div>I =
am trying to setup OAI UE with OAI enb . I am not able to connect my UE to =
eNB . I feel its a problem of power calibrations . Can any know what all po=
wer parameters i should use ?</div><div><br></div><div>I am using B210 USRP=
 for both UE and eNB.</div><div><br></div><div>Command to run UE :=C2=A0<sp=
an style=3D"color:rgb(0,0,255)">./lte-uesoftmodem.Rel14 -U 1 -C 2685000000 =
-r 50 --ue-scan-carrier --ue-txgain 70 --ue-rxgain 80</span></div><div><spa=
n style=3D"color:rgb(0,0,255)"><br></span></div><div>Command to run eNB: <f=
ont color=3D"#0000ff">sudo -E targets/bin/lte-softmodem.Rel14 -O targets/PR=
OJECTS/GENERIC-LTE-EPC/CONF/enb.band7.tm1.50PRB.usrpb210.conf 2&gt;&amp;1 |=
 tee FDD-enb.log</font></div><div><br></div><div><br></div><div>Parameters =
I want to know:</div><div><br></div><div><b>eNB:</b></div><div><br></div><d=
iv>pdsch_referenceSignalPower<br></div><div>tx_gain<br></div><div>rx_gain<b=
r></div><div><br></div><div>Or any other parameter=C2=A0that you think can =
be helpful?</div><div><br></div><div><b>UE:</b></div><div><br></div><div>ue=
-txgain</div><div>ue-rxgain<br></div><div><br></div><div><br></div><div>Tha=
nks</div><div>Ashutosh</div><div><br></div></div></div></div></div></div></=
div></div></div>

--000000000000d484a605b9697843--


--===============6349934214847921587==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6349934214847921587==--


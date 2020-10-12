Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC3328C3DB
	for <lists+usrp-users@lfdr.de>; Mon, 12 Oct 2020 23:13:51 +0200 (CEST)
Received: from [::1] (port=38408 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kS58g-0008OK-Uo; Mon, 12 Oct 2020 17:13:50 -0400
Received: from mail-lj1-f171.google.com ([209.85.208.171]:46226)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <aitamakinde@abuad.edu.ng>)
 id 1kS58c-00083M-Ow
 for usrp-users@lists.ettus.com; Mon, 12 Oct 2020 17:13:46 -0400
Received: by mail-lj1-f171.google.com with SMTP id c21so18196860ljn.13
 for <usrp-users@lists.ettus.com>; Mon, 12 Oct 2020 14:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=abuad-edu-ng.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=+JMe1a0qlQzS2cKCdk2kGr0GZrlj2pDr3ddSBpbU3fE=;
 b=y1HDfNC1BPjGeGdQUSjaKg6w4n6NystyrXSsQpO2bqx6oqjT1H0bJH9Fz1s2visYYQ
 Y0yxLW2FNSMUX2+70Pfy/VDU0trR/ME0/SJWAaenN5OqUDSugb9SkIinIpYzZx7N7XsK
 UrGrFnv+NJ8ecUFM07WK96FM1cQ5WufcJGTDbcZItxmJEacaiD3PnHeNLXmf9pZGABY1
 8ED1fKA4no1lw7zIqOgAYDPcTeCz0pjajNKl4Ihkv3sCtcQRLGvZqHkmEf3mhtj1qmS2
 S9mOR2Wd5MCZkonwIYa28gwMG7eEt/pVFg2Up6k5eJjN3jpJM916Cle1qZSbQrFBEkiU
 KRfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=+JMe1a0qlQzS2cKCdk2kGr0GZrlj2pDr3ddSBpbU3fE=;
 b=Dw79EqATdPeXetzD3gGNfoJqQTzzZeAl07kzg+ww4fnzxxL3RPRtfUbQ8DGphh8Llv
 vb8uus+IQNwDWPEhtE4cDSx5DQBn1vBJMy9shyx/Gowq24lnO56VPjFGqbT1HBPxZ6fo
 oUKS4X88ukoO1PpzxleK8ocZabTApqC5cSZlnBNHcHbixiH7maaaLBOD1jixV0LKZYxo
 5s2PKSUNeXK2Dpe6qMRXmvwO8iow9p0JoFxG42JDM6N3Js7BTNcZPDBhXxLJrbam9kbQ
 qDt+t34N7ZY4eXR/ZqOAF2YRDJLR3b5DrBsstJu197RlmIlQK23+tKSb9toHLG3DoWKK
 BlFQ==
X-Gm-Message-State: AOAM532r0hgcK/ubWcvdds0DfFBoenS4avccWemAga6vCs4W9WWNgkvp
 jSzc/w4XqYQ9WKrJobTwfoiFFSizqWMe4XKUQHHkXi6JF8GwsA==
X-Google-Smtp-Source: ABdhPJx6j0NdvIcEvuQ1hZbXdg+F3NHciMm96ztie46icpJ/u9jQgml6JaDE9Q33//nt5H1hgWvIVR/zKLbC52FkwjI=
X-Received: by 2002:a2e:b0fc:: with SMTP id h28mr7271038ljl.226.1602537184962; 
 Mon, 12 Oct 2020 14:13:04 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 12 Oct 2020 22:12:33 +0100
Message-ID: <CAD-eGGpzQLh5vP3NKpMPmyydJZqX1AkLCEqaK5d6D3CvP_D6yg@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] Chip rate and sampling rate.
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
From: AKINYELE ITAMAKINDE via USRP-users <usrp-users@lists.ettus.com>
Reply-To: AKINYELE ITAMAKINDE <aitamakinde@abuad.edu.ng>
Content-Type: multipart/mixed; boundary="===============6702560436230412226=="
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

--===============6702560436230412226==
Content-Type: multipart/alternative; boundary="000000000000a6424805b17fc31a"

--000000000000a6424805b17fc31a
Content-Type: text/plain; charset="UTF-8"

Is chip rate same as sample rate? Is there any relationship between chip
rate and symbol rate? Lastly, how can one arrive at actually usrp
transmitter power when transmitting LFSR sequence. Thanks

--000000000000a6424805b17fc31a
Content-Type: text/html; charset="UTF-8"

<div dir="auto">Is chip rate same as sample rate? Is there any relationship between chip rate and symbol rate? Lastly, how can one arrive at actually usrp transmitter power when transmitting LFSR sequence. Thanks</div>

--000000000000a6424805b17fc31a--


--===============6702560436230412226==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6702560436230412226==--


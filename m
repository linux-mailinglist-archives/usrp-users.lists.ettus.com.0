Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7771C01E1
	for <lists+usrp-users@lfdr.de>; Thu, 30 Apr 2020 18:15:30 +0200 (CEST)
Received: from [::1] (port=58840 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jUBqR-0002hp-RO; Thu, 30 Apr 2020 12:15:27 -0400
Received: from mail-ot1-f51.google.com ([209.85.210.51]:40725)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1jUBqO-0002UW-3d
 for usrp-users@lists.ettus.com; Thu, 30 Apr 2020 12:15:24 -0400
Received: by mail-ot1-f51.google.com with SMTP id i27so5387595ota.7
 for <usrp-users@lists.ettus.com>; Thu, 30 Apr 2020 09:15:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=jys/A5dvHPMdpXyDoCdA8C5ZY6F51oN/C1NT+A7cyNo=;
 b=TfuWujvf2tz5fItpN64EkeZIZO18zeccXbBOWR25VZG9cHtYb0u/3jifOspaZRHfNR
 ar+Ih+KTQweYUKqApQ+7uq528hjk8QS6ZMXKVk3xm1QbDIeRAfqQ8sem3v0ELP1IfYy3
 m5oAu6GP7aXnTMnSMikri6fAo7SSRBE5046rizIBLYsgho/PIj3WAtpTUcc/YPFcq0sl
 njmodPoTAX8PNksbfbrLNaGbJlWntiTkHwP5Jy2WYASW7DsiwND90qQAJeK9kmsmvsSZ
 qDtdKnc/zOQ2jbcAdaXe17g0tEbwIKPfXzoJPaSwPaGOky3BwDXgf7KegmMteZ8HttQz
 kQxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=jys/A5dvHPMdpXyDoCdA8C5ZY6F51oN/C1NT+A7cyNo=;
 b=BiZRKdocmX7iNE4I6eb9fB3gfe1yP3wdpQyXYWZFN+kUsrwZogEcqhz9e4VB54YutY
 i+ynN23eBUZ1f0SUfZMbbrgx/pVmzTuB1qWcZBmARgZ62DqXYAz9yXbVeiTdcJJai73g
 c3TUUv/NbWo26MG7x2456ztVxaYwxzfjIQtOSHFqJiptQe+LzizxyAkRFjESFOrMQ1Wa
 cU80ZScYXL6pupuXgKhV1MibX+i5lL88OQOAiFmdUD9fbDnCelh4elceqaC7vr3XKLCy
 HumM3wc52Lu+6i/TcDkFn+j4ZHvtLiSTxyJkVVi/cco5Ado5Fuw0U/nHFh96XvCEc7DY
 oW/A==
X-Gm-Message-State: AGi0PuYMXhmGkrYZpKo4E2FydqlAHk7EptGl+HHtE3CXnoSO5ox6knC/
 9pNt2hmxQZT0ioCn9Vdxxn5Hsc3e074tmi7oFBWP+ppf9qA=
X-Google-Smtp-Source: APiQypI24tsI7Kz1Fd7WgdWEr6aBhRuV0sBkShIT6CERqYBVg/hlueab99cyaSWiHvfKSjDbx76FVxPTnQV3s8F3EW8=
X-Received: by 2002:a05:6830:2430:: with SMTP id
 k16mr2777585ots.302.1588263283083; 
 Thu, 30 Apr 2020 09:14:43 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 30 Apr 2020 12:14:32 -0400
Message-ID: <CAB__hTQEpg3ECpK4y-FwtNZvg3udTfSCULJ4DR4DBJCUNBru1Q@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] N310 radio_ctrl UHD-3.15.LTS
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============5409891845047270418=="
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

--===============5409891845047270418==
Content-Type: multipart/alternative; boundary="000000000000cc9bbe05a4845c99"

--000000000000cc9bbe05a4845c99
Content-Type: text/plain; charset="UTF-8"

Hi,
I have a question about the intended functionality of the
radio_ctrl->set_xx_frequency() and get_xx_frequency functions when used
with the N310.  For a given daughterboard with 2 channels, if I call the
set_xx_frequency() sequentially for the 2 channels on the daughterboard but
with different frequencies and then later query them both with
get_xx_frequency(), I obtain the individual values that I requested for
each channel.  But, given that there is truly only 1 LO for both channels,
I would expect that the get_xx_frequency() function would return identical
values for both channels.  Is there any way to find out the actual
frequency setting for a channel rather than just the most recently
requested value for that channel?

Rob

--000000000000cc9bbe05a4845c99
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div>I have a question about the intended functiona=
lity of the radio_ctrl-&gt;set_xx_frequency() and get_xx_frequency function=
s when used with the N310.=C2=A0 For a given daughterboard with 2 channels,=
 if I call the set_xx_frequency() sequentially for the 2 channels on the da=
ughterboard but with different frequencies and then later query them both w=
ith get_xx_frequency(), I obtain the individual values that I requested for=
 each channel.=C2=A0 But, given that there is truly only 1 LO for both chan=
nels, I would expect that the get_xx_frequency() function would return iden=
tical values for both channels.=C2=A0 Is there any way to find out the actu=
al frequency setting for a channel rather than just the most recently reque=
sted value for that channel?</div><div><br></div><div>Rob</div></div>

--000000000000cc9bbe05a4845c99--


--===============5409891845047270418==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============5409891845047270418==--


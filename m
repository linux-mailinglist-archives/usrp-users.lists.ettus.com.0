Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 4699529CCC9
	for <lists+usrp-users@lfdr.de>; Wed, 28 Oct 2020 01:25:57 +0100 (CET)
Received: from [::1] (port=56602 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kXZHk-0001uI-By; Tue, 27 Oct 2020 20:25:52 -0400
Received: from mail-qk1-f169.google.com ([209.85.222.169]:37266)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <apruhd@gmail.com>) id 1kXZHg-0001qG-NB
 for usrp-users@lists.ettus.com; Tue, 27 Oct 2020 20:25:48 -0400
Received: by mail-qk1-f169.google.com with SMTP id z6so3090711qkz.4
 for <usrp-users@lists.ettus.com>; Tue, 27 Oct 2020 17:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=901mWY8jQc6X1sM63/jh1hDLpcxpB4ypag1rdcVMNVQ=;
 b=hH2bJgCCl9V0oXNg3JdOW3nTpL/EPEMo0EJ53ajzMuvH6SpPR5LOlP2UFD5USb9G7f
 LDGW4BHppyzUMItTdZMBTM3xANyRShQ7oE7z39kIwOwyWt7y+bavlLLMVfKzKGFbSBjO
 VAvvn7HmHoL9bchp0+XMC3HK9vuU0mFUo9qpQ0K0IKeJoySKUKXpIPQW8sCEqBvMYZcR
 pQP1+iXKwpTA8iNgJcmbRPRMj4iHTpK734hqQoevhFIpangKRlGlZ4msc6EKT5PJ9oKK
 uDzHWV45vnNxZT5Vt8GSJ8Xs2fhtOsIOJQtm6o39T1oWou3ORNmQIXXuPDlAl/9L2jjG
 yQ7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=901mWY8jQc6X1sM63/jh1hDLpcxpB4ypag1rdcVMNVQ=;
 b=VDtOUzTt166Wez+b5wY240q6RycbL3i5z3UWVrav1a17w+Dhvlht5daApCKKRL7vFV
 P/6P1o/n6TwO6c58nulMGm8Ov32dQ51+gI5hRf/Dtlz1Kq7sLRY3dazc5qAUscUF06u7
 e5OYaJVsGWcEE3SPv/8Nld0oZisDK0ZDmPS2GxOVvCe466CU82Bl6OJzhjhmQl/NFXfN
 f8iMBOw+6hyBBtv3W2GiOz7oGBaOGNCrjeX+QLT6zUZDBI3kaGyuFkrVHKHshnp2XAfz
 lky4Uo5d/jALzHlC8w7ysRRvY+hT4SkO3jLmBKqWR+CndgN2ZiJBvgofvflIlTjhB3u5
 gDnA==
X-Gm-Message-State: AOAM533lEmU/I7b63YXc2HwkST4xLsd/cRDLrbfIb6ol45xx1SNMhSTr
 fBNwbKNbR+YFGXwLK/NlUtWb3xmzZI4LqVYr+9glt5srpklW3MUP
X-Google-Smtp-Source: ABdhPJx/IpNZgFGrjpWU1YfKZhLmLSk+LX/qbk22TmqJnESDxjqBkWhuGlpVAyEHecJnp7Xvkp0ahJ/GloMWEgc6Sro=
X-Received: by 2002:ae9:ee15:: with SMTP id i21mr4574334qkg.76.1603844707723; 
 Tue, 27 Oct 2020 17:25:07 -0700 (PDT)
MIME-Version: 1.0
Date: Wed, 28 Oct 2020 01:24:54 +0100
Message-ID: <CAAC=UJPpvpO2GaKDEfMuaHDyepNhydZ+DRBqKvXOMgkCuQSf-w@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] USRP B200mini half-duplex 1 port
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
From: Alvaro Pendas Recondo via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Alvaro Pendas Recondo <apruhd@gmail.com>
Content-Type: multipart/mixed; boundary="===============7268840318588527122=="
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

--===============7268840318588527122==
Content-Type: multipart/alternative; boundary="000000000000142e6605b2b032be"

--000000000000142e6605b2b032be
Content-Type: text/plain; charset="UTF-8"

Hello,

I am trying to implement a half-duplex system with one antenna, preferably
using just one port in the USRP device. I have noticed that the port that
is labelled as TX in the B200mini can also receive (the same as the TX/RX
port in the "normal" B200). My question is, is it possible to change modes
in that port during execution time? I have read that, as a rule of thumb,
the port should receive as default and transmit when it receives samples to
do so. However, I do not know if that functionality applies to the B200mini.

If it is possible, do you have any general ideal about the best way to do
it in GNURadio?

Best regards,

Alvaro

--000000000000142e6605b2b032be
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><br>I am trying to implement a half-duplex syste=
m with one antenna, preferably using just one port in the USRP device. I ha=
ve noticed that the port that is labelled as TX in the B200mini can also re=
ceive (the same as the TX/RX port in the &quot;normal&quot; B200). My quest=
ion is, is it possible to change modes in that port during execution time? =
I have read that, as a rule of thumb, the port should receive as default an=
d transmit when it receives samples to do so. However, I do not know if tha=
t functionality applies to the B200mini.<br><br>If it is possible, do you h=
ave any general ideal about the best way to do it in GNURadio? <br><br>Best=
 regards,<br><br>Alvaro<br><div></div></div>

--000000000000142e6605b2b032be--


--===============7268840318588527122==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7268840318588527122==--


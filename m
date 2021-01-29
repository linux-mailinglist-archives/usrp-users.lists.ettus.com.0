Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 6814F308CD1
	for <lists+usrp-users@lfdr.de>; Fri, 29 Jan 2021 19:56:30 +0100 (CET)
Received: from [::1] (port=50520 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1l5YwU-0008IB-N9; Fri, 29 Jan 2021 13:56:26 -0500
Received: from mail-oi1-f175.google.com ([209.85.167.175]:40871)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <rkossler@nd.edu>) id 1l5YwR-0008E6-9b
 for usrp-users@lists.ettus.com; Fri, 29 Jan 2021 13:56:23 -0500
Received: by mail-oi1-f175.google.com with SMTP id p5so10969129oif.7
 for <usrp-users@lists.ettus.com>; Fri, 29 Jan 2021 10:56:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=806Q1Dvb8SY+QPM5vW955re+XwSXh5mQN4Dm57kbq9o=;
 b=LUOORDIfsHoj1eRZFqGrdzLMmg/DTsXqbkEoL+ws5j3wxMfv8XZbvOF8+m87jGw7yF
 k5PyXkwVETyxUuqztJvWbMEa7IrUd6sSSHLDYyF2A/LvckP+xJiNlo+ifRz+vydajFJn
 3BqVjNQfqTZ2hnLWR6nW2xeW/ZCQ7yFjUL/rIYIttypwIPrTvwY5oGNLfEHM54ZPVokf
 jHCPpM6HgURJ9ZtRdpNV1q9EZhrOlSCwTIIRV4oN3emzvw6asDGCHNfSXY1uqhODJoMR
 GXRpXX0hSkZzLwBQtAhr+x0rgRecjxW9ajOOXr72L8yCgQ22v9Pca+p9pxxPznWat1K+
 nR1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=806Q1Dvb8SY+QPM5vW955re+XwSXh5mQN4Dm57kbq9o=;
 b=XMaIms/0NDdG2Et98o0XA2D5Wq9UJ7+hEfHMa3l97i5pWPuzdbpohuMq2RjZdHyNck
 p46V0G2ytDeIfz5s7D5NhYCixlAsW7PUZvJIIXgpiVtrTQD8B7nkHAxBBqboFhuiPfNZ
 QqkdVZmEz5EnDUVQwNzl9RfwM4Ybdz+wQRGVw2PcpQ2VhkH+HuuszgLzzSrInHBTn/p9
 LKSPZg71eaFfFpilaWbN/F36lbbu2dmwblNLV6+EU4Mc3CEVFWhrJ3uaxYLYSUYvJV9z
 ols3tzBwIZz3NqLrR84Z6N0732l9dKRzxGsIme2Ffoa6L0k42kPJgq2zJ7F7/b9DUEld
 0NJw==
X-Gm-Message-State: AOAM532IKcnUjAUcoLrdw9ZesucXrjxi0mvrIbsvZxXLPFe8RxjiosPa
 56m6ner6p6ukEAWF8kfqPDzC7xgeIDnFidBWbvkE0sG/N2YVHg==
X-Google-Smtp-Source: ABdhPJzzXbjTqWlhBfvywyQDVVBo/CeJvJy8v34CB2O461BMDsjf5m7fMQnUMMpLKOkBoudH8Bgp4KaF4GwnViDgM7I=
X-Received: by 2002:aca:5504:: with SMTP id j4mr3436553oib.150.1611946542047; 
 Fri, 29 Jan 2021 10:55:42 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 29 Jan 2021 13:55:31 -0500
Message-ID: <CAB__hTSriXCNe4UbEADtZiwnpuzuremzC2f4rs7E8Du0joRsEg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] Error Late Command on Receive
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
From: Rob Kossler via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Rob Kossler <rkossler@nd.edu>
Content-Type: multipart/mixed; boundary="===============3157088176038593066=="
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

--===============3157088176038593066==
Content-Type: multipart/alternative; boundary="0000000000000957c905ba0e8d4b"

--0000000000000957c905ba0e8d4b
Content-Type: text/plain; charset="UTF-8"

Hi,
I am receiving ERROR_CODE_LATE_COMMAND on occasion in my Rx-only
application and I'm wondering what could be the possible cause. It doesn't
happen often, and seems to occur in the middle of continuous streaming (not
at the start), often after having also received several Overflows.

Normally I associate Late errors with Tx (where the cause is often that a
timed sample arrived at the Tx radio after the time was already passed).
But, I suppose it could happen on Rx if I sent a command to start streaming
at some time in the past.  However, such an error would occur right away at
the start of streaming - not after several seconds of successful streaming
and possibly a few Overflows.  I can't think of a reason the radio would
issue a Late during the course of continuous streaming. No other commands
(such as gain changes) are being sent by my application during the
streaming.

Here's a little info about my Rx-only application in case it's relevant. I
have a custom FPGA build for a receive-only application where my RFNoC
graph looks like:
    Radio=>DDC=>my_blocks=>host
There are actually 4 channels (and 4 host rx_streamers) and "my_blocks"
does some joint channel processing (similar to AddSub block).  None of
my_blocks generate this Late error so it must be happening in the Radio,
DDC, or perhaps the rx_streamer.

Rob

--0000000000000957c905ba0e8d4b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>I am receiving ERROR_CODE_LATE_COMMAND on occasion=
 in my Rx-only application and I&#39;m wondering what could be the possible=
 cause.=C2=A0It doesn&#39;t happen often, and seems to occur in the middle =
of continuous streaming (not at the start), often after having also receive=
d several Overflows.=C2=A0</div><div><br></div><div>Normally I associate La=
te errors with Tx (where the cause is often that a timed sample arrived at =
the Tx radio after the time was already passed). But, I suppose it could ha=
ppen on Rx if I sent a command to start streaming at some time in the past.=
=C2=A0 However, such an error would occur right away at the start of stream=
ing - not after several seconds of successful streaming and possibly a few =
Overflows.=C2=A0 I can&#39;t think of a reason the radio would issue a Late=
 during the course of continuous streaming. No other commands (such as gain=
 changes) are being sent by my application during the streaming.</div><div>=
<br></div><div>Here&#39;s a little info about my Rx-only application in cas=
e it&#39;s relevant. I have a custom FPGA build for a receive-only applicat=
ion where my RFNoC graph looks like:</div><div><div>=C2=A0 =C2=A0 Radio=3D&=
gt;DDC=3D&gt;my_blocks=3D&gt;host</div><div>There are actually 4 channels (=
and 4 host rx_streamers) and &quot;my_blocks&quot; does some joint channel =
processing (similar to AddSub block).=C2=A0 None of my_blocks generate this=
 Late error so it must be happening in the Radio, DDC, or perhaps the rx_st=
reamer.</div></div><div><br></div><div>Rob</div></div>

--0000000000000957c905ba0e8d4b--


--===============3157088176038593066==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============3157088176038593066==--


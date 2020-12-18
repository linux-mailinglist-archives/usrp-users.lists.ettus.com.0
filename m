Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 64A152DE233
	for <lists+usrp-users@lfdr.de>; Fri, 18 Dec 2020 12:47:19 +0100 (CET)
Received: from [::1] (port=41894 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kqEE8-0001a1-Ma; Fri, 18 Dec 2020 06:47:16 -0500
Received: from mail-io1-f41.google.com ([209.85.166.41]:44229)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <adray0001@gmail.com>) id 1kqEE4-0001TB-MY
 for usrp-users@lists.ettus.com; Fri, 18 Dec 2020 06:47:12 -0500
Received: by mail-io1-f41.google.com with SMTP id z5so1746099iob.11
 for <usrp-users@lists.ettus.com>; Fri, 18 Dec 2020 03:46:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=P6a+0muy6x481k8q83G1JRTgpmrEybWUwnTWZM2qC+g=;
 b=SyqIgqzO1tr9pJ/Xpe3UaWM2cHW5aL9kgki3T72/pIGQdSRrcHuiaIOiWLdSJsn0M2
 jOivgjm8EsjPSZpx98nRrPPkaOj8hPHvRP1FJWp9RI4FZHDY5986F2wJYt+i3IZZBACs
 IspMP+jkO5RvitBuitl6t6sP3fBcyzg9597OmzuETFbh/l7hTQyCRPaON5B5donTK5GS
 nXXMPF0S6Ry55+UafqDBSXxIo+t66PZXzT8FrqWd2iAi8uJQllm9NzMN4XVQXw9NIJQL
 Sx0rogWJzS4DK5GYbTc8+Ba+yZ3tUpfSNUp9NdYyjHv4ok4aFTPbvHSvD1Hwj0CEw15w
 zvEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=P6a+0muy6x481k8q83G1JRTgpmrEybWUwnTWZM2qC+g=;
 b=QTntlj/7jaZeQKn+rVsA8XXDGzwfnvXioUytPmrz/PstXK4pvZaOdAYcb8du9FZHhF
 bWySSqpyDMNRM5HwVwSbH2uJsu/UlC/c4kCz+cfxpOgIdT1B3ZfKP7jF5VWYRDA55vrI
 a/FmJgQvZpXluNk4ieikTpDEUrJfsc+ENlN0mosJWykJMeFv5tJ/xEO5LLBAHPJVyxLQ
 5FND58J1y4CW69QyzTrtw749YOgBvzYhibDsDLB2E8fl0VUdHz+HX+IGfcX6GHCpL8Ro
 Y1liKR0fLIYNqGEUmaNBU9m4J7ZLOKeaNCcyb4BWS9WJ8GTN+mBxzh+2EWtiHdVet7mK
 w5+Q==
X-Gm-Message-State: AOAM533ZY3rZDnzQEqbYNt/e1F4w1pYrrYM7D4sE1P8a+6rRm7qB4I+n
 foHRvwUiINSBgocPFhEe5CxDBl3Q8NqJDmd2BTxBGcHfJJV79Q==
X-Google-Smtp-Source: ABdhPJyBuWQrvZ0nX5KEfgARsgE6TXkKm7pM3+jz8V/Oz7a3cBSAMNzglJDjlc+r/u3/dN71bLF1Do5vx0+kBTyuxcE=
X-Received: by 2002:a05:6638:1a:: with SMTP id
 z26mr3302678jao.52.1608291991921; 
 Fri, 18 Dec 2020 03:46:31 -0800 (PST)
MIME-Version: 1.0
Date: Fri, 18 Dec 2020 13:46:20 +0200
Message-ID: <CAPRRyxupte2QphfLqNdvvHw0+=Jjqshnh_Pk7mK0gDuCGoRkRw@mail.gmail.com>
To: discuss-gnuradio <discuss-gnuradio@gnu.org>,
 usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] GPIo USRP E310
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
From: Ivan Zahartchuk via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ivan Zahartchuk <adray0001@gmail.com>
Content-Type: multipart/mixed; boundary="===============4844858190696449577=="
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

--===============4844858190696449577==
Content-Type: multipart/alternative; boundary="000000000000dfa5b905b6bba814"

--000000000000dfa5b905b6bba814
Content-Type: text/plain; charset="UTF-8"

Hello. Tell me how to compile RFnoC firmware for USRP E310 so that you can
control GPIO through the Radio block?

--000000000000dfa5b905b6bba814
Content-Type: text/html; charset="UTF-8"

<div dir="ltr">Hello. Tell me how to compile RFnoC firmware for USRP E310 so that you can control GPIO through the Radio block?</div>

--000000000000dfa5b905b6bba814--


--===============4844858190696449577==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============4844858190696449577==--


Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B6C2932BD
	for <lists+usrp-users@lfdr.de>; Tue, 20 Oct 2020 03:41:15 +0200 (CEST)
Received: from [::1] (port=55380 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1kUgeF-0007oQ-Ra; Mon, 19 Oct 2020 21:41:11 -0400
Received: from mail-ed1-f49.google.com ([209.85.208.49]:45218)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <ms230317@gmail.com>) id 1kUgeC-0007jj-37
 for usrp-users@lists.ettus.com; Mon, 19 Oct 2020 21:41:08 -0400
Received: by mail-ed1-f49.google.com with SMTP id dg9so123671edb.12
 for <usrp-users@lists.ettus.com>; Mon, 19 Oct 2020 18:40:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=tdjwTnsnO2muNSdC//Cq9zW/L6OFR6dvcwD8nd0sf1Q=;
 b=EHK6vAC1QCSywO7fh0yMUkFm7gORowLay514xrYs/X6pxcYhaoK852rRGicSyLjlqN
 2TQU2CmBje4Yzs7D4hIi96oMToBeHG3GvgdjtsaCtUodNZB13w1ku9eCqjmzzCoWSa+s
 0dHIU3BzzU1kCsyN2f5/9aUkAuHA3b7hgvSt1VC1aqaDoJ0/kq1pnoIUPS8aee15uPXP
 4H+QSl1Zmlts+H7mQee+O7U5+CJ7PpY6gGfeEaNIepRah1eqFTuVktFutNIMT9+L4J1C
 MX7mW0uhYVOPD7FXynabOTtkRHvoutnXd25aWkv4KQpDXM2rkyaghJSvob2MsGx91Gvn
 lSFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=tdjwTnsnO2muNSdC//Cq9zW/L6OFR6dvcwD8nd0sf1Q=;
 b=KZKQfOufocF3JX+JfEd9VW+ZgAtd0TRbmlJkfbus6/qgY5c0p07F0St2hhru1vb6vA
 9yAh5fZtEQ0bPYrY28bkMQ6HCpQlpgw/LDd34fbduhrUZcD+sIJ0QbbCMCJFenFYMI7Y
 QmgZsCHBwOMuVzZPJ5Hbqvg9f7Qylfff1fOyKAq3YM/TtROlXhOD413+/tfMcPV5Uq4l
 uIol9t45eTt3zCo0i7Gc4ndHRp7MnTO4+J4yjTsKLhEFIdHbj90pHUdZ5mCdzoJGnxhz
 OulpwbyoDbUerlFyKmW4oZs/AjMGirUcSRkg69m2i7dGR2KmqI2zdH80A/W4ZNdPxa6n
 VCSw==
X-Gm-Message-State: AOAM532FJyLXcBfCntE1qKCQKe2YODniwHVwsZAj27xhmsLjC0HRsfu7
 xxJNNdaIkTKLOvAnrqlfPdcNirA8h/pFj9+zT0uJCUZh
X-Google-Smtp-Source: ABdhPJzMWrRlJCSQbWWUdCnUDPYUs7vKWiuTUynathdEj1zTZ9GZY51cuE9OWut0HvXqhZQ3j+DdSy1YlNgN4TLOrjQ=
X-Received: by 2002:aa7:c792:: with SMTP id n18mr350477eds.209.1603158027035; 
 Mon, 19 Oct 2020 18:40:27 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 20 Oct 2020 03:40:16 +0200
Message-ID: <CAFsy4Xg+g3NR1dwe8uKj=rmZQ7TV-HLWvvZcoOuMU_u5Z9_Uow@mail.gmail.com>
To: usrp-users@lists.ettus.com
Subject: [USRP-users] spectrum availability measurement with usrp
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
From: My St via USRP-users <usrp-users@lists.ettus.com>
Reply-To: My St <ms230317@gmail.com>
Content-Type: multipart/mixed; boundary="===============6922874329701325630=="
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

--===============6922874329701325630==
Content-Type: multipart/alternative; boundary="000000000000b86aeb05b21050eb"

--000000000000b86aeb05b21050eb
Content-Type: text/plain; charset="UTF-8"

Dear all,

I'm new with USRP but I would like to use a B200 or B210 card to show the
spectrum availability in time. That means, I want to put a USRP card in a
place, connect it to a computer, choose a frequency and show the statistics
about the occupation/availability of this frequency over an observation
period. Is it possible? Could someone tell me the starting point ? Thank
you very much.

With kind regards,
Trang Nguyen

--000000000000b86aeb05b21050eb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Dear all,</div><div><br></div><div>I&#39;m new with U=
SRP but I would like to use a B200 or B210 card to show the spectrum availa=
bility in time. That means, I want to put a USRP card in a place, connect i=
t to a computer, choose a frequency and show the statistics about the occup=
ation/availability of this frequency over an observation period. Is it poss=
ible? Could someone tell me the starting point ? Thank you very much.</div>=
<div><br></div><div>With kind regards,</div><div>Trang Nguyen<br></div></di=
v>

--000000000000b86aeb05b21050eb--


--===============6922874329701325630==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6922874329701325630==--


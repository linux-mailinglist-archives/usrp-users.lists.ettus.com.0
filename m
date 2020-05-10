Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 10A571CCA8F
	for <lists+usrp-users@lfdr.de>; Sun, 10 May 2020 13:10:44 +0200 (CEST)
Received: from [::1] (port=49592 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jXjqv-00014Z-Mu; Sun, 10 May 2020 07:10:37 -0400
Received: from mail-io1-f48.google.com ([209.85.166.48]:42719)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <adray0001@gmail.com>) id 1jXjqs-00010J-EK
 for usrp-users@lists.ettus.com; Sun, 10 May 2020 07:10:34 -0400
Received: by mail-io1-f48.google.com with SMTP id e9so6460154iok.9
 for <usrp-users@lists.ettus.com>; Sun, 10 May 2020 04:10:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=tE51gw1odCZvPZKOsHzR8IvgfQOnKr38mQ6lFrUadbo=;
 b=Zc5iI3A0nutIO6z5YDLfIUZGyLWZrMZtIstEjUxyWkfVowSjr3RnJB1CkjqkHe9/7x
 ow0hwWlAq0OLFDMiPHojPkMQu+s/vrEhc2yn3K9FYCJtBylLymVsXLIZIEIawCyo1bS/
 UPF0u1RWMA88iLses+Tlf4NJ010zpi7m2idSE0MavAAlQxwLJ5lZYYsn/g1Gaeh9qQXG
 EaJxfaLnD2VG3mOMEd8jaXOXlmBZ+pALCmnp2JJ5KoKZlIF4h6Fwy7v7aRrx0V+g0csL
 R41YB/Xf94KV9F6LyANCvK3kud/MF+9HsB+J3vyAHGkGi4m2e6zUu49F55vzL4qVMFqC
 klLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=tE51gw1odCZvPZKOsHzR8IvgfQOnKr38mQ6lFrUadbo=;
 b=lDqHLMhk8Dq6J4UttB5uc9RtSnKC4AAJMFRmDuqWSQfokI718sMSiZ2WgiJKw7Z/Fy
 CaqQ+Ie6d44ysgERErPAxKV4zlZlPjnu5HNSZrgoi9q86xu3DH8w6GXQRrIqQizcC7xj
 Oxw6rqks6L4hYFJMiRb6oRS3Ztoarr6Ks+oiQntcZKgEpY4DhpMizzUnMdqAmQItXQ6k
 nBJObXICuBJeAdWm/9mcS/ruZ14FF1eZgUJZUi1bKlTVmDQbv4ZcWjXjfG7izUH1Q5iQ
 mVW0FBN0vHHBJeXkTaULI+vRicw0ikGYL6Aile//OgNYruokAqzUrhci7ewemHb6ZL3P
 9ueQ==
X-Gm-Message-State: AGi0PuZVJcLrX/3ZgpQGfTYrDo70KtWCzSgzetiLGZsY9oPQYu66SIdS
 BtJx50EsO3USc/s9dLfVRLHo6iNPbmgh/z2zmmNhkh/1s6U=
X-Google-Smtp-Source: APiQypLgAMVWhSfrMVa3H0kHF+KBAPCw/nmUCYPnz5KGrMplUE3fmZ7SnBXrkWbVOkq0J+SB+he05r+zCNIJqTqd5uw=
X-Received: by 2002:a5e:8203:: with SMTP id l3mr10636611iom.35.1589108993582; 
 Sun, 10 May 2020 04:09:53 -0700 (PDT)
MIME-Version: 1.0
Date: Sun, 10 May 2020 14:09:42 +0300
Message-ID: <CAPRRyxstLciU5Dh1bP7KkTMGBzjOu1pMmj4s=ECFcP6xYcLMTg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>,
 discuss-gnuradio <discuss-gnuradio@gnu.org>
Subject: [USRP-users] disabling ddc duc blocks in rfnoc usrp e310
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
From: Ivan Zahartchuk via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Ivan Zahartchuk <adray0001@gmail.com>
Content-Type: multipart/mixed; boundary="===============9116334275598905578=="
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

--===============9116334275598905578==
Content-Type: multipart/alternative; boundary="000000000000126aa505a5494500"

--000000000000126aa505a5494500
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello. I want to create an image of fosphor, window, fft, 2x AXI FIFOs, FIR
for USRP E310. I need to change the spectral bandwidth. But with the
samp_rate parameter this does not work out very well. Therefore, I want to
use the FIR filter for these purposes, but when building the bit file, I do
not have enough space on the FPGA. Therefore, I decided to turn off the DDC
and DUC blocks, but I don=E2=80=99t know how to do it. I would be grateful =
for any
information.

--000000000000126aa505a5494500
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello. I want to create an image of fosphor, window, fft, =
2x AXI FIFOs, FIR for USRP E310.
I need to change the spectral bandwidth. But with the samp_rate parameter t=
his does not work out very well. Therefore, I want to use the FIR filter fo=
r these purposes, but when building the bit file, I do not have enough spac=
e on the FPGA. Therefore, I decided to turn off the DDC and DUC blocks, but=
 I don=E2=80=99t know how to do it. I would be grateful for any information=
.</div>

--000000000000126aa505a5494500--


--===============9116334275598905578==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============9116334275598905578==--


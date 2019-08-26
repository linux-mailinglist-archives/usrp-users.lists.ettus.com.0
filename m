Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7094D9D4EA
	for <lists+usrp-users@lfdr.de>; Mon, 26 Aug 2019 19:29:21 +0200 (CEST)
Received: from [::1] (port=54648 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i2Inv-0006kv-8b; Mon, 26 Aug 2019 13:29:19 -0400
Received: from mail-ot1-f54.google.com ([209.85.210.54]:35733)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rkossler@nd.edu>) id 1i2Inr-0006gK-2Q
 for usrp-users@lists.ettus.com; Mon, 26 Aug 2019 13:29:15 -0400
Received: by mail-ot1-f54.google.com with SMTP id 100so5170646otn.2
 for <usrp-users@lists.ettus.com>; Mon, 26 Aug 2019 10:28:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nd.edu; s=google;
 h=mime-version:from:date:message-id:subject:to;
 bh=8I454hnSgbNdfQTZDRY7e7wDuvUZeIvWzKe7ztYrvPQ=;
 b=bVsm4VaZXbU10UqwCTCEcxvzWNvG/IxyE8de6v3f5VWOmMbZ9LYaTyanfCSjQ7Mqg7
 UASwI7mKM05oDfkp5KmpKTC1RxurQ16LfCrNafsRJ5VE6n4HeEpaIjquN5TKsW5viO55
 dX/pgnqYMS3nf8szxs1jIe82AwjVXwxAJVIPOymX24ZmtEukVsoHfuy2FCnkZOUmr98Y
 chC3mgySubpCK6GC7/shIj+LzImTGYrQI+aOSlsWNV/50sC+GamB1mrCBc/vFJRSLak7
 u1Xlw5t7wQPhYBj59MTutCgWt1yJHUqquO1MG3+rBxPNJTiBDNxlb+NZmfsyEiBwiSsh
 Z5aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=8I454hnSgbNdfQTZDRY7e7wDuvUZeIvWzKe7ztYrvPQ=;
 b=O9EMiW2BMGP/M1vMTVsWL16ADNbzyLZao9eDDcwIB/zfwLvzPPnfuH2VPD61iKuuwj
 jcq+ituX4Yfg7D8m550n3nsxFlDvBkCKWynM2uI3Fiq4W/TmognNZ/nUUe0Wg1mhIYn4
 sNUIMnbKIx8LsCgxzTrBVAf8edeYFF4NgZY+3BT1JcbOMHW33EqQmS2uLRfYWfOQEJXn
 PTSkqLCiicTVkB1m5XQPq7Of4D+9EMmK5Pa6JCEZzPSmJ2NCIav8k6cuOVvZ8HKgkUW1
 hUkyfQBm8iLlnEm4B4vSw80uWcAU04i3H+B5bumKEYAA3l6+pVzb5LVfSbghuIzLGWjZ
 rgfQ==
X-Gm-Message-State: APjAAAWHgB3yQfAgjdl7yFZKXc3ron+ODqwR/i++VG5GnS7i99tChLsk
 kcuYHVPzLt1IPWA6nl4IMEzvWUTnda7ewwBuI5Cfl4Xh
X-Google-Smtp-Source: APXvYqwg6h5SMNcwuEBRHnokA4xsGAjVSRNkCVW2ys+kuP6AVY8XWxfv6t/HYUG1QUHNGRbjoBfc/xixYJnCt0VaKbA=
X-Received: by 2002:a9d:d27:: with SMTP id 36mr16711217oti.327.1566840514058; 
 Mon, 26 Aug 2019 10:28:34 -0700 (PDT)
MIME-Version: 1.0
Date: Mon, 26 Aug 2019 13:28:22 -0400
Message-ID: <CAB__hTT6CNq6nFT6heN6uT_rA3qz5FgRK+M4ZGLAiZANRB2bQg@mail.gmail.com>
To: usrp-users <usrp-users@lists.ettus.com>
Subject: [USRP-users] RFNoC ce_rst and clear_tx_seqnum
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
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
Content-Type: multipart/mixed; boundary="===============0584699980679754577=="
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

--===============0584699980679754577==
Content-Type: multipart/alternative; boundary="00000000000042c8360591087c05"

--00000000000042c8360591087c05
Content-Type: text/plain; charset="UTF-8"

Can anyone explain the meaning of the signals ce_rst and clear_tx_seqnum?
It is not clear to me what would cause either of them to go High.  Should I
expect ce_rst to be strobed each time I launch my C++ app that calls UHD?
I had previously thought so, but now I have reason to doubt.

Thanks.
Rob

--00000000000042c8360591087c05
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Can anyone explain the meaning of the signals ce_rst and c=
lear_tx_seqnum?=C2=A0 It is not clear to me what would cause either of them=
 to go High.=C2=A0 Should I expect ce_rst to be strobed each time I launch =
my C++ app that calls UHD?=C2=A0 I had previously thought so, but now I hav=
e reason to doubt.=C2=A0<br><div><br></div><div>Thanks.</div><div>Rob</div>=
</div>

--00000000000042c8360591087c05--


--===============0584699980679754577==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0584699980679754577==--


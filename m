Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 85DAE4C2E6A
	for <lists+usrp-users@lfdr.de>; Thu, 24 Feb 2022 15:28:46 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 7006938523F
	for <lists+usrp-users@lfdr.de>; Thu, 24 Feb 2022 09:28:45 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="QH+EQITP";
	dkim-atps=neutral
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
	by mm2.emwd.com (Postfix) with ESMTPS id D50C1384EA6
	for <usrp-users@lists.ettus.com>; Thu, 24 Feb 2022 09:27:50 -0500 (EST)
Received: by mail-oo1-f51.google.com with SMTP id j7-20020a4ad6c7000000b0031c690e4123so3626389oot.11
        for <usrp-users@lists.ettus.com>; Thu, 24 Feb 2022 06:27:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:date:message-id:subject:from:to:cc:in-reply-to
         :references:user-agent;
        bh=PMiqVUZj5q/DEgRxKSCweMyx7aPPHY/G6RQ9Id5PzLA=;
        b=QH+EQITP2blHBgop57AfcygNBjS4sYm2Q2iDk6a9eH44pKPycOIeISPaXd9V7k1drx
         KGREh0D0+m9QBpfGIjPhJgxmtgxiwMb0AGQcVs+qhKftR+Z19U9fKswjP3pLtI4vQ7kn
         P2FjniPuFff23r0dYZ//oM8xZOIiVy69dW9sxyYp+Wc+P0jg/MscmLWbBsKvJlSFf3MB
         jl9Xl3g1WE187P5MSdv+gvIQyBdItfvq5PXm74Hm2UVLo3vah2P23ULINGT7HtIgb7ZV
         CYbtqdxG8VUTCawbq+b3CyB+1ezYcJC46imrjB57CYlwV9aVCLu75e7sOpm08ycZwXZy
         UqCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc
         :in-reply-to:references:user-agent;
        bh=PMiqVUZj5q/DEgRxKSCweMyx7aPPHY/G6RQ9Id5PzLA=;
        b=qmqFkAmWCU4atG747AMl7xMt017ZNdgQG7B/zrEIx+T+F8IRioQTQgyVTglY5sjQzk
         GBLzkZ5uvYNfFqY3dQVNJV3yFdDZGKpAQ4RzIz7A/aME+rKcktwZM0wGiAP5phAYxRXu
         kIXg4n/yOa919D6JkX0MYWkbUt3msDmYTGfj2W54cspddlGFsGzub8VlrllAISenH+OI
         nS/OADlozGvVX3myjY7ggMFS6syPGmdnzayvtt1chLVftrLPXdw58rtSk2BibLahW6H5
         0s16+zADcpexkORPWNCE+BiAgTLZqbLEQdrIgv+XV8vfPxNiVr8d7URtJuQmXKfH2CVz
         rYlw==
X-Gm-Message-State: AOAM533JdkWt2792971aR+nj0RPXdLTg2wdwt9N+n20P2CD2Laj3UDtF
	Y5tNr3Wa12eWM95SOqpXh7s93RAZjbQ=
X-Google-Smtp-Source: ABdhPJwJoRMdXNSUInZkFRNG2U3HKJ29HE8IcTjojsLcL6IDU+DVzu5QIOieZDVW5jUEo8QwrqPBJA==
X-Received: by 2002:a05:6870:d58b:b0:d2:8d1d:c12 with SMTP id u11-20020a056870d58b00b000d28d1d0c12mr6465780oao.108.1645712869828;
        Thu, 24 Feb 2022 06:27:49 -0800 (PST)
Received: from [192.168.1.17] (47-218-105-159.bcstcmta04.res.dyn.suddenlink.net. [47.218.105.159])
        by smtp.gmail.com with ESMTPSA id u3sm1819017oao.25.2022.02.24.06.27.49
        for <usrp-users@lists.ettus.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Feb 2022 06:27:49 -0800 (PST)
MIME-Version: 1.0
Date: Thu, 24 Feb 2022 08:27:33 -0600
Message-ID: <Mailbird-72d0444a-a4fb-4861-9e25-1f4c17111a7d@gmail.com>
From: "page" <pageheller@gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>,
 "Brian Padalino" <bpadalino@gmail.com>
In-Reply-To: <d70713c5-a3a5-203a-0832-fc574283e038@gmail.com>
References: <fupwrwahRapfiSvxw6o9IskW3A3hWdRACJCUT1egWo@lists.ettus.com>
 <eb4ae5b3-c829-54a1-faf6-4521d9cf5c6a@gmail.com>
 <CAEXYVK76f6eaXqH2wG6JUdAbMksoQ_inBZN1SqPYgEQSX8Gszw@mail.gmail.com>
 <d70713c5-a3a5-203a-0832-fc574283e038@gmail.com>
User-Agent: Mailbird/2.9.58.0
X-Mailbird-ID: Mailbird-72d0444a-a4fb-4861-9e25-1f4c17111a7d@gmail.com
Message-ID-Hash: HUJLJUGJFIFUDHSILVUX7N55IVYIA3DD
X-Message-ID-Hash: HUJLJUGJFIFUDHSILVUX7N55IVYIA3DD
X-MailFrom: pageheller@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: =?utf-8?Q?C=C3=A9dric_Hannotier_via_USRP-users?= <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Overflows "O" messages with USRP X300
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/HUJLJUGJFIFUDHSILVUX7N55IVYIA3DD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2047065726578384133=="

--===============2047065726578384133==
Content-Type: multipart/alternative;
 boundary="----=_NextPart_28818186.447232246583"

------=_NextPart_28818186.447232246583
Content-Type: text/plain;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have seen the "stuck" behavior, although it was about a year ago and I do=
ubt I could reproduce it again. It occurred as I streamed two Rx inputs at =
20 MSPS on a B210 to a Raspberry Pi 4 USB 3.0. It was model v1.1, which has=
 known issues in the hardware implementation of USB 3.0. The pi is up to v1=
.4 now. --page

--
page heller
On 2/23/2022 1:48:52 PM, Marcus D. Leech <patchvonbraun@gmail.com> wrote:
On 2022-02-23 14:04, Brian Padalino wrote:


While this may be true in general, the test case is said to be (USRP Source=
 -> Null Sink). This is the most trivial case and should basically be the e=
xact same as what benchmark_rate is running, and yet GNU Radio has overflow=
 whereas benchmark_rate does not. When I was testing this, another interest=
ing thing happened where once an overflow occurred in GNU Radio, it never r=
ecovered and it was O all the time and with a very low/strange sample rate =
coming in - as if something was stalled in the pipeline on the radio and re=
peatedly thrashing some state. That is, until I ran benchmark_rate. Once be=
nchmark_rate was able to run properly, GNU Radio was able to run fine until=
 the next O. This is with GNU Radio maint-3.10 and whatever is built in wit=
h gr-uhd linked against UHD 4.10.5 I believe.
The GNURadio test-case and benchmark_rate are only "the exact same" from a =
high-level functional standpoint--the details are quiet different. For one,=
 there's
extra function-call overhead with gr-uhd, since it "wraps" UHD. That *shoul=
d* be trivial, depending on how things like the _recv() call specifies tran=
sfer sizes, etc.

But in addition, Gnu Radio turns *every block* into its own thread, and it =
has an exotic ring-buffer manager between blocks. So, the implementation de=
tails are quite
different, and I am not surprised to find that there are "emergent behavior=
s" at very high sample rates.


In my opinion, something fishy is happening in GNU Radio with the X310 that=
 is not exhibited when using benchmark_rate.
Yes, I would agree that the "stuck in overrun mode" is disquieting. It isn'=
t at all surprising to find that two functionally-similar test programs hav=
e different
overrun behavior, however.

Does the "stuck" behavior change with older UHDs? I haven't seen this mysel=
f with UHD 3.15, but I don't have any way of testing sample rates above 25M=
sps myself,
nor host machines that could really tolerate that.




Brian

[01d33f63-e467-4d8a-b295-2169fb08b6e8]
------=_NextPart_28818186.447232246583
Content-Type: text/html;
 charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<body><div id=3D"__MailbirdStyleContent" style=3D"font-size: 10pt;font-fami=
ly: Arial;color: #000000;text-align: left" dir=3D"ltr">
                                        I have seen the "stuck" behavior, a=
lthough it was about a year ago and I doubt I could reproduce it again. It =
occurred as I streamed two Rx inputs at 20 MSPS on a B210 to a Raspberry Pi=
 4 USB 3.0. It was model v1.1, which has known issues in the hardware imple=
mentation of USB 3.0. The pi is up to v1.4 now. --page<div><br></div><div c=
lass=3D"mb_sig">--<div>page heller</div></div><blockquote class=3D'history_=
container' type=3D'cite' style=3D'border-left-style:solid;border-width:1px;=
 margin-top:20px; margin-left:0px;padding-left:10px;'>
                        <p style=3D'color: #AAAAAA; margin-top: 10px;'>On 2=
/23/2022 1:48:52 PM, Marcus D. Leech &lt;patchvonbraun@gmail.com&gt; wrote:=
</p><div style=3D'font-family:Arial,Helvetica,sans-serif'>
    <div class=3D"moz-cite-prefix">On 2022-02-23 14:04, Brian Padalino
      wrote:<br>
    </div>
    <blockquote type=3D"cite" cite=3D"mid:CAEXYVK76f6eaXqH2wG6JUdAbMksoQ_in=
BZN1SqPYgEQSX8Gszw@mail.gmail.com">
      
      <div dir=3D"ltr"><br>
        <div class=3D"gmail_quote">
          <div>While this may be true in general, the test case is said
            to be (USRP Source -&gt; Null Sink).=C2=A0 This is the most
            trivial case and should basically be the exact same as what
            benchmark_rate is running, and yet GNU Radio has overflow
            whereas benchmark_rate does not.=C2=A0 When I was testing this,
            another interesting thing happened where once an overflow
            occurred in GNU Radio, it never recovered and it was O all
            the time and with a very low/strange sample rate coming in -
            as if something was stalled in the pipeline on the radio and
            repeatedly thrashing some state.=C2=A0 That is, until I ran
            benchmark_rate.=C2=A0 Once benchmark_rate was able to run
            properly, GNU Radio was able to run fine until the next O.=C2=A0
            This is with GNU Radio maint-3.10 and whatever is built in
            with gr-uhd linked against UHD 4.10.5 I believe.</div>
        </div>
      </div>
    </blockquote>
    The GNURadio test-case and benchmark_rate are only "the exact same"
    from a high-level functional standpoint--the details are quiet
    different.=C2=A0=C2=A0 For one, there's<br>
    =C2=A0 extra function-call overhead with gr-uhd, since it "wraps" UHD.=
=C2=A0=C2=A0
    That *should* be trivial, depending on how things like the _recv()
    call specifies transfer sizes, etc.<br>
    <br>
    But in addition, Gnu Radio turns *every block* into its own thread,
    and it has an exotic ring-buffer manager between blocks.=C2=A0 So, the
    implementation details are quite<br>
    =C2=A0 different, and I am not surprised to find that there are "emerge=
nt
    behaviors" at very high sample rates.=C2=A0 <br>
    <blockquote type=3D"cite" cite=3D"mid:CAEXYVK76f6eaXqH2wG6JUdAbMksoQ_in=
BZN1SqPYgEQSX8Gszw@mail.gmail.com">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <div><br>
          </div>
          <div>In my opinion, something fishy is happening in GNU Radio
            with the X310 that is not exhibited when using
            benchmark_rate.</div>
        </div>
      </div>
    </blockquote>
    Yes, I would agree that the "stuck in overrun mode" is
    disquieting.=C2=A0=C2=A0 It isn't at all surprising to find that two
    functionally-similar test programs have different<br>
    =C2=A0 overrun behavior, however.<br>
    <br>
    Does the "stuck" behavior change with older UHDs?=C2=A0 I haven't seen
    this myself with UHD 3.15, but I don't have any way of testing
    sample rates above 25Msps myself,<br>
    =C2=A0 nor host machines that could really tolerate that.<br>
    <br>
    <br>
    <blockquote type=3D"cite" cite=3D"mid:CAEXYVK76f6eaXqH2wG6JUdAbMksoQ_in=
BZN1SqPYgEQSX8Gszw@mail.gmail.com">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <div><br>
          </div>
          <div>Brian</div>
        </div>
      </div>
    </blockquote>
    <br>
  </div></blockquote>
                                        </div></body><img class=3D"mailbird=
" width=3D"1" height=3D"1" style=3D"border:0; width:1; height:1; display: n=
one;" src=3D"https://tracking.getmailbird.com/OpenTrackingPixel/?messageId=
=3DMailbird-72d0444a-a4fb-4861-9e25-1f4c17111a7d@gmail.com&senderHash=3D3B5=
B4D97E15C53C84AB3BBA711CF8FA4E8DEA2B834615A93F02F850A4B090C4C&recipientHash=
=3D62BDC89AFB5F046DA8A22F47CAB9288DB44CE5326F66A9C242E4B6B173C0F8E1&interna=
lId=3D06cc6474-ef6b-49e9-b4ba-7cddd0e9176c" alt=3D"01d33f63-e467-4d8a-b295-=
2169fb08b6e8">

------=_NextPart_28818186.447232246583--

--===============2047065726578384133==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2047065726578384133==--

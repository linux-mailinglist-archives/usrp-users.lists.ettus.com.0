Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 2850839B910
	for <lists+usrp-users@lfdr.de>; Fri,  4 Jun 2021 14:32:48 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 2B9363843DC
	for <lists+usrp-users@lfdr.de>; Fri,  4 Jun 2021 08:32:47 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="XX4l3V5E";
	dkim-atps=neutral
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	by mm2.emwd.com (Postfix) with ESMTPS id 94D9838433E
	for <usrp-users@lists.ettus.com>; Fri,  4 Jun 2021 08:31:57 -0400 (EDT)
Received: by mail-oi1-f179.google.com with SMTP id a21so9605503oiw.3
        for <usrp-users@lists.ettus.com>; Fri, 04 Jun 2021 05:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1Z2Hlzl0PC2PJsm9QJDmXJmXbN/rTkjhJcYj7LdJIO0=;
        b=XX4l3V5E46LjWK6HXbhpSWKnM3Da9EHwBPtc/2fc8BGHQDB/x2oU9QmFkI+D9b5kk5
         NBEArBCbhov7UI9vYDaDAB79BdpdBydWhbnOraVScNAOUFLJVHlJp8AFpSyFWuGXR6DE
         GCgHp/f5vcFKyGFa22mFwRr+AiMbrx9LAEOVNU5BOcCBSHvtmO5m7bDHSeTYm2Xy8jFg
         p+HhcX9I3SUUrnqWfcfzuIUM+tnPelVlV6BSHFFWEJHUI3a1eJIRx7g3Q3kMltXDjsxA
         EhOQVcosYPFU/H1uQko3iX6p+ZgdgaaGtiOqIg/52adwrRHD7u1zu9LLpoZpJf9HwGRr
         ts2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1Z2Hlzl0PC2PJsm9QJDmXJmXbN/rTkjhJcYj7LdJIO0=;
        b=a8QW6wcI/iaO7IrAEXoyzW+fwO+tV5WSVGTTPoNDbZ3E50RtVcHcsFxKypDIIDxgcQ
         WGxDLe+TBHHyZOGNEcL41TfAZ0kOnuEvbZya/c8nEayqxoUOa3dOPja0JpWeExMXsm3V
         JzmhISC24j82aoAXRRLAXwBdWBtecEVdX8qyTcqolA+64ZPMOwkVcn4KSk1ktN+t3vmo
         9ag4YDOuZwgXyhg4Y0pS7lcKXOnRl6ZkOwotzqgprzJiJbb8ZOZDLzb1IV0v0J59UVrd
         aF7yHZoVNpnakSpYf3cNN2x24WyoIOVWflcRhicv0pcB84I559lf7kgRoDhED99OHdrP
         bMbw==
X-Gm-Message-State: AOAM532S0v5+YM3Arq3B0a5FlAzztYuSQaOHwUTfZkGEO8zb5kDXxu10
	zHtkpSjGvwpeNfIPDSYxZu2tk53XGH319hY1oV8IJ5jOodoTqQ==
X-Google-Smtp-Source: ABdhPJy4KIsY81TeKMgxMpMZpHlkI4BHk/B85Be69h2pqHKPrU/sf631CoUI5m4owt/tctatPIIjpW1DavgQW6vrE5A=
X-Received: by 2002:a05:6808:10d6:: with SMTP id s22mr10831873ois.96.1622809916810;
 Fri, 04 Jun 2021 05:31:56 -0700 (PDT)
MIME-Version: 1.0
References: <495983099.3160297.1622725504093@mail.yahoo.com>
 <54055AEB-AEA1-4A10-A75F-D96F3FA8652F@gmail.com> <0369eb8c-4fea-0e61-77ca-3ae74f5241ab@ist.osaka-u.ac.jp>
In-Reply-To: <0369eb8c-4fea-0e61-77ca-3ae74f5241ab@ist.osaka-u.ac.jp>
From: Brian Padalino <bpadalino@gmail.com>
Date: Fri, 4 Jun 2021 08:31:44 -0400
Message-ID: <CAEXYVK7KyX-1makb7SdhqQoGBX+mos6ZCcONKTDSjsgzJRuazA@mail.gmail.com>
To: Viktor Erdelyi <viktor@ist.osaka-u.ac.jp>
Message-ID-Hash: TVAEBM7HYF4Z4OQ2QEYDYEECZHWZSK4B
X-Message-ID-Hash: TVAEBM7HYF4Z4OQ2QEYDYEECZHWZSK4B
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Center frequency drift on USRP B-series even with Octoclock
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TVAEBM7HYF4Z4OQ2QEYDYEECZHWZSK4B/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6938462866811881608=="

--===============6938462866811881608==
Content-Type: multipart/alternative; boundary="000000000000a12ac205c3efe02e"

--000000000000a12ac205c3efe02e
Content-Type: text/plain; charset="UTF-8"

On Fri, Jun 4, 2021 at 2:21 AM Viktor Erdelyi <viktor@ist.osaka-u.ac.jp>
wrote:

> You're right Marcus, 0.9GHz seems to be better indeed (see image). Also
> thanks for the input on the B205 PLL.
>
> May I ask in what way phase noise can affect the signal's frequency?
> According to an NI webpage [1], it "deals with very short time scales and
> produces effects that look more like unwanted modulation changing the shape
> of the waveform rather than a wandering frequency". Am I missing something?
>
It should be noted the B205 doesn't really have an analog PLL like the
B200/B210/X-series.  Check the schematic:

  https://files.ettus.com/schematics/b200mini/b200mini.pdf

The VTCXO is fed by a 16-bit DAC and the FPGA does some counting to try to
keep it locked, but it doesn't have the feedback loop that the actual
analog PLL does.

Kind of comparing apples with oranges at that point.

Brian

--000000000000a12ac205c3efe02e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Fri, Jun 4, 2021 at 2:21 AM Viktor Erd=
elyi &lt;<a href=3D"mailto:viktor@ist.osaka-u.ac.jp">viktor@ist.osaka-u.ac.=
jp</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <p>You&#39;re right Marcus, 0.9GHz seems to be better indeed (see
      image). Also thanks for the input on the B205 PLL.</p>
    <p>May I ask in what way phase noise can affect the signal&#39;s
      frequency? According to an NI webpage [1], it &quot;deals with very
      short time scales and produces effects that look more like
      unwanted modulation changing the shape of the waveform rather than
      a wandering frequency&quot;. Am I missing something?<br></p></div></b=
lockquote><div>It should be noted the B205 doesn&#39;t really have an analo=
g PLL like the B200/B210/X-series.=C2=A0 Check the schematic:</div><div><br=
></div><div>=C2=A0=C2=A0<a href=3D"https://files.ettus.com/schematics/b200m=
ini/b200mini.pdf">https://files.ettus.com/schematics/b200mini/b200mini.pdf<=
/a></div><div><br></div><div>The VTCXO=C2=A0is fed by a 16-bit DAC and the =
FPGA does some counting to try to keep it locked, but it doesn&#39;t have t=
he feedback loop that the actual analog PLL does.</div><div><br></div><div>=
Kind of comparing apples with oranges at that point.</div><div><br></div><d=
iv>Brian</div></div></div>

--000000000000a12ac205c3efe02e--

--===============6938462866811881608==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6938462866811881608==--

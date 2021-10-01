Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id BE32641EEF3
	for <lists+usrp-users@lfdr.de>; Fri,  1 Oct 2021 15:55:19 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 775A8384B7D
	for <lists+usrp-users@lfdr.de>; Fri,  1 Oct 2021 09:55:18 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="b/5eV6Pf";
	dkim-atps=neutral
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 2DDFF38415B
	for <usrp-users@lists.ettus.com>; Fri,  1 Oct 2021 09:54:33 -0400 (EDT)
Received: by mail-oi1-f174.google.com with SMTP id n64so11542664oih.2
        for <usrp-users@lists.ettus.com>; Fri, 01 Oct 2021 06:54:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=l57TG2JrTE0iMUorMSm4yrhER/yw8r68X2/jKuogX3A=;
        b=b/5eV6Pf1Wln0Ljb7YtY7xKuVoe3oVpNMxHnIXeXUPiZgxnDaikXfwCrgLPUDKZ6Iq
         gOu69q+N+1KPYj3ndDHZeic7+3tT31y7OKbV3CGux0hR6KmXUHrA7MKXfejjENj2IRGd
         zO2IUaAYtiWkMBPnca4lFUlv9Zws8+kzE3vzEMnJyn5NJktnyqS6jSZRCOrjFKPEoEyo
         nvJs/9uvzydl4Bkr3+6nksTo2JJ8cQuABIZVQe9X2gjR3vZ83rda3AlLvdSnH8FXakjD
         ZrztRDFh83m/NnMf0PywvV6km5J7WAKut7eeSc+Bly8TUU3JoNe8vbnY2NAY4nQirXex
         ZW1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=l57TG2JrTE0iMUorMSm4yrhER/yw8r68X2/jKuogX3A=;
        b=WGuvLfbFGymxZKf6HV0c305RD9aWgrvro7DeUFFKZvIEp/hVByjuvwL+qCDCffgxrv
         LgdvnyKINyuO3k86GKdrr/qkf+SmY+Rbp14RvFBAaqdDtHNxd2wJRPdlA1TdajhV4B/p
         12c5H/iEJFhjwVsstK1Wn6H74h4pwOkPGMaJTb7haPtaph7dAZqGWCpQFAe3T78ZExPJ
         FiKoM2mz6l9Wptr3jxPIVAeJQ4EdTrgsLSl+wFeaa1fT1gSf2rnwv8DhP9g/fi33Yyms
         J39lXZX2ysfz7KhCIOcOQHEIEKND/JVGErmT5dD7W7MKWSUE1NecKBWHXQ8FJXS6p8RM
         bKmQ==
X-Gm-Message-State: AOAM5319Pwsld3fHUDhMqNpuqyga8FssW8xMZUv88nMY924+u2o9Fb3t
	+h9xJNaGAlVQeH+c9AXhcr7DbgdqxlLlxTmT2RFgbw==
X-Google-Smtp-Source: ABdhPJwfZ4KViXRtqlIOuYS0MFqPNrjGr518Mr/rNtwd5H1uqJLzR4fkVxz5eX4AXiBFbioZFl05WSWPhbIbzSJCOP8=
X-Received: by 2002:a05:6808:1148:: with SMTP id u8mr3872468oiu.33.1633096472201;
 Fri, 01 Oct 2021 06:54:32 -0700 (PDT)
MIME-Version: 1.0
References: <CY1P110MB08211A4EDC3FF3B5A0C29EC8E3AA9@CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM>
 <db842876-79a2-4807-fdf3-d86d03f2e29f@gmail.com> <CY1P110MB0821105DB4342C7D8C5A4AFCE3AA9@CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM>
 <CAB__hTSQL_ozNwJLnvyj+gpY+Nqo9xmj-=4Q1Njb98Nq-v2i5w@mail.gmail.com>
 <CY1P110MB08213E904D0CAB514E1CDF08E3AA9@CY1P110MB0821.NAMP110.PROD.OUTLOOK.COM>
 <e8334022-4808-1181-b924-eb9bea20f255@gmail.com>
In-Reply-To: <e8334022-4808-1181-b924-eb9bea20f255@gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Fri, 1 Oct 2021 09:54:21 -0400
Message-ID: <CAB__hTSY10GXmQAPnZn5nHAGn7eRMiXm_zRCZDNMOyRGLfkZSA@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: WBCQU6EBO2JOFFUDN2B5UU6LB7QV2WMA
X-Message-ID-Hash: WBCQU6EBO2JOFFUDN2B5UU6LB7QV2WMA
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Adam Bader (Proxy)" <adam.bader@oroliads.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Amount of Radio Buffer in 4.1
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WBCQU6EBO2JOFFUDN2B5UU6LB7QV2WMA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0816724964280287477=="

--===============0816724964280287477==
Content-Type: multipart/alternative; boundary="0000000000001c9d9705cd4ae78e"

--0000000000001c9d9705cd4ae78e
Content-Type: text/plain; charset="UTF-8"

My understanding is that the buffering has changed significantly with UHD
4.x.  In 4.x, the streaming flow is (host -> duc -> radio) but there is a
new concept of streaming end point (SEP) between the host and DUC that
provides some buffering. The buffer size is set to 32768 (could be double
that amount in samples if that is for 64 bit words). There is additional
buffering at the input to each RFNoC block - in this case the DUC. It
appears that the DUC input FIFO is set to the MTU size (~2k or 4k samples,
I think).  In comparison, I *think* that 3.13 included sram fifos on the
fpga as the first rfnoc block (host -> fifo -> duc -> radio).  Perhaps the
amount of buffering provided by these fifos was substantially larger.

On Thu, Sep 30, 2021 at 4:46 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2021-09-30 4:40 p.m., Adam Bader (Proxy) wrote:
>
> My testing has been focused on a single RF channel @62.5Msps since that is
> failing, but we normally run all 4 channels at that sampling rate with 3.13
> successfully.
>
> The benchmark_rate example as well as the sample application I wrote do
> not show these failures consistently, there are occasional runs where
> underruns and late commands will show up. Our application hits underruns
> almost immediately after the initial time_spec passes and RF transmission
> begins.
>
> I've been trying to investigate why we see consistent failures in our
> application when nothing changes other than the version of UHD, which led
> me to finding what seems like a significant change in the amount of buffer
> the radio allocates.
> _____________________________________
> The information contained in this e-mail and any attachments from Orolia
> may contain confidential and/or proprietary information, and is intended
> only for the named recipient to whom it was originally addressed. If you
> are not the intended recipient, any disclosure, distribution, or copying of
> this e-mail or its attachments is strictly prohibited. If you have received
> this e-mail in error, please notify the sender immediately by return e-mail
> and permanently delete the e-mail and any attachments.
>
> Given that 1msec of data at 62.5msps is only 125Kbyte of buffer, I'm kind
> of doubtful that this is, per se, a buffering issue.
>
> Does your application set up the stream for "NUM_SAMPS_AND_MORE" or
> "NUM_SAMPS_AND_DONE" or "START_CONTINUOUS"?
>
> What is the spacing between your 1ms bursts?
>
>
>
>
>

--0000000000001c9d9705cd4ae78e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>My understanding is that the buffering has changed si=
gnificantly with UHD 4.x.=C2=A0 In 4.x, the streaming flow is (host -&gt; d=
uc -&gt; radio) but there is a new concept of streaming=C2=A0end point=C2=
=A0(SEP) between the host and DUC that provides some buffering. The buffer =
size is set to 32768 (could be double that amount in samples if that is for=
 64 bit words). There is additional buffering at the input to each RFNoC bl=
ock - in this case the DUC. It appears that the DUC input FIFO is set to th=
e MTU size (~2k or 4k samples, I think).=C2=A0 In comparison, I *think* tha=
t 3.13 included sram fifos on the fpga as the first rfnoc block (host -&gt;=
 fifo -&gt; duc -&gt; radio).=C2=A0 Perhaps the amount of buffering provide=
d by these fifos was substantially larger.</div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 30, 2021 at 4:46 PM M=
arcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun=
@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-09-30 4:40 p.m., Adam Bader
      (Proxy) wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
     =20
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
        My testing has been focused on a single RF channel @62.5Msps
        since that is failing, but we normally run all 4 channels at
        that sampling rate with 3.13 successfully.=C2=A0</div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
        <br>
      </div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
        The benchmark_rate example as well as the sample application I
        wrote do not show these failures consistently, there are
        occasional runs where underruns and late commands will show up.
        Our application hits underruns almost immediately after the
        initial time_spec passes and RF transmission begins.</div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
        <br>
      </div>
      <div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0);background-color:rgb(255,255,255)">
        I&#39;ve been trying to investigate why we see consistent failures
        in our application when nothing changes other than the version
        of UHD, which led me to finding what seems like a significant
        change in the amount of buffer the radio allocates.=C2=A0</div>
      <div>_____________________________________<br>
        The information contained in this e-mail and any attachments
        from Orolia may contain confidential and/or proprietary
        information, and is intended only for the named recipient to
        whom it was originally addressed. If you are not the intended
        recipient, any disclosure, distribution, or copying of this
        e-mail or its attachments is strictly prohibited. If you have
        received this e-mail in error, please notify the sender
        immediately by return e-mail and permanently delete the e-mail
        and any attachments.
      </div>
    </blockquote>
    Given that 1msec of data at 62.5msps is only 125Kbyte of buffer, I&#39;=
m
    kind of doubtful that this is, per se, a buffering issue.<br>
    <br>
    Does your application set up the stream for &quot;NUM_SAMPS_AND_MORE&qu=
ot; or
    &quot;NUM_SAMPS_AND_DONE&quot; or &quot;START_CONTINUOUS&quot;?<br>
    <br>
    What is the spacing between your 1ms bursts?<br>
    <br>
    <br>
    <br>
    <br>
  </div>

</blockquote></div></div>

--0000000000001c9d9705cd4ae78e--

--===============0816724964280287477==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0816724964280287477==--

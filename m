Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 256D145A62C
	for <lists+usrp-users@lfdr.de>; Tue, 23 Nov 2021 16:03:14 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A999D383E7E
	for <lists+usrp-users@lfdr.de>; Tue, 23 Nov 2021 10:03:12 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="asdkquUT";
	dkim-atps=neutral
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	by mm2.emwd.com (Postfix) with ESMTPS id CBB6438392E
	for <usrp-users@lists.ettus.com>; Tue, 23 Nov 2021 10:02:22 -0500 (EST)
Received: by mail-oi1-f170.google.com with SMTP id q25so45314309oiw.0
        for <usrp-users@lists.ettus.com>; Tue, 23 Nov 2021 07:02:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5LKkcxPXtgSkmWDOKiJAIlhbxmrr4VV6G2IDWB3LiIQ=;
        b=asdkquUT2WCDlVij8yvjUqmx3OE7IZ6jA6PhqT5eK5985l0pdI20Ax6pApVPfUs7IO
         fWLqfOcddqRbV5nYccVP4SNedRZFANs0hcfXRQ5xasxd8upqmehrh9X6VdRIGx8d9InE
         7ZAqphfb9ILAVYzkfcnBIBdXi2mKYZwzkkexwfdLbqWWAzs6tL5rCPNWoH8aeFOH4fBY
         wAsX2YziRtVuBp9vXitUC37Iro9vw15yiSWQ5peUMQ4h0O5F89dVnxWglmwMZ4gLcmAY
         AjexfaHX5XgD5EZcyE6nKcvGfmCwCHphXsiPZjwfuTcij9NkCaGBgcwtnZtt4aLyywhC
         qWPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5LKkcxPXtgSkmWDOKiJAIlhbxmrr4VV6G2IDWB3LiIQ=;
        b=py8/j5NamBK2mrw3Jsq8dcUiv1ILsxY+VTa6UAAA5l+jA3hQkJJd05lJS0evYy0xZc
         T5dtjVDJt/JBg4KApLUYRKn7P6U/8AeKCxBQcNXFQbA3g0JYQaLGooB4nbQQlHRLolRs
         bYF+8K1fyuuPCN5ybTy6g85ZVBpOq4WKddUJeuqHZ2o782/NIIJb9HTobPKK8dEYj8R6
         zOQ1TTyrWCW6TgyirHgyMDfkYnHhzhcG9HTYHTigh+CLnENgc9pe1t/3IMz2hBvfbpml
         p7VSOCDwG/q54eTm04PAaQYKDKCPlPiU1ZjCJMIgcOaiwgpGR8wPWk9Dnrt0mkcOr65Z
         rb+g==
X-Gm-Message-State: AOAM530TbY5ooNGOawKK2rUotgrYfPuiM+C5U7V0u+SLauQAREXP4Fsg
	zXXsydkPSfsn40S0MepfC5iFvc5wq19jugJsBYblyIORsyk=
X-Google-Smtp-Source: ABdhPJxLHA+fhKVMbiN7MBOFRSRnaWhLONJJxaBS1oZTfg0MANwrk1fKLt1GM4ViKE9RcP94I30o2+4i0VdK7TSZDkk=
X-Received: by 2002:aca:5ac6:: with SMTP id o189mr3020277oib.150.1637679741806;
 Tue, 23 Nov 2021 07:02:21 -0800 (PST)
MIME-Version: 1.0
References: <m34SbAp7uXvcUdPHRQT4inJeEBEtBNHul7UXTWUDk@lists.ettus.com>
In-Reply-To: <m34SbAp7uXvcUdPHRQT4inJeEBEtBNHul7UXTWUDk@lists.ettus.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Tue, 23 Nov 2021 10:02:11 -0500
Message-ID: <CAB__hTQu+CNYObAwRapdHFcG4Fdba9impHrJ_R-Kd=8n8ohiHQ@mail.gmail.com>
To: emanuele.tolomei@intecs.it
Message-ID-Hash: ENXW7CUXBLCPYU2YPBADW6D3SOVGAZSB
X-Message-ID-Hash: ENXW7CUXBLCPYU2YPBADW6D3SOVGAZSB
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Trouble with TwinRX frequency tuning
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/ENXW7CUXBLCPYU2YPBADW6D3SOVGAZSB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1169958261114595458=="

--===============1169958261114595458==
Content-Type: multipart/alternative; boundary="00000000000044646005d17607c9"

--00000000000044646005d17607c9
Content-Type: text/plain; charset="UTF-8"

Hi Emanuele,
I'm not certain, but it looks like the command buffer to the radio may be
filling up such that when it's full, you receive the "no response packet"
error. Configuration commands such as set_rx_frequency are inserted into a
command FIFO on the FPGA.  One thing that can cause the entire FIFO to be
blocked is if the command at the head of the FIFO is a timed command and
the time is still in the future. In this case, all commands behind the head
command will block until the head command executes at the indicated time.
And, the FIFO is not deep so it is pretty easy to fill it up if it is not
simultaneously being consumed.  I didn't notice any bug that should cause
the FIFO to block. But, the fact that you can run error-free if you don't
use the timed commands is a clue.  I have 2 suggestions: 1) add a delay
between the set_time_now() and the get_time_now(), and 2) move the
get_time_now() below the first set of tune commands.
Rob

On Tue, Nov 23, 2021 at 4:06 AM <emanuele.tolomei@intecs.it> wrote:

> Hi Marcus, thank you
>
> I tried both changing the command-time (up to 1 second) and using UHD
> version 3.15.0.0.
>
> The application still crashes with the same error.
>
>
> terminate called after throwing an instance of 'uhd::io_error'
>
> what(): EnvironmentError: IOError: [0/DDC_0] sr_write() failed:
> EnvironmentError: IOError: Block ctrl (CE_03_Port_60) no response packet -
> AssertionError: bool(buff)
>
> in uint64_t ctrl_iface_impl<_endianness>::wait_for_ack(bool, double) [with
> uhd::endianness_t _endianness = (uhd::endianness_t)0u; uint64_t = long
> unsigned int]
>
> at /home/emanuele/uhd/host/lib/rfnoc/ctrl_iface.cpp:151
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000044646005d17607c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Emanuele,<div>I&#39;m not certain, but it looks like th=
e command buffer to the radio may be filling up such that when it&#39;s ful=
l, you receive the &quot;no response packet&quot; error. Configuration comm=
ands such as set_rx_frequency are inserted into a command FIFO on the FPGA.=
=C2=A0 One thing that can cause the entire FIFO to be blocked is if the com=
mand at the head of the FIFO is a timed command and the time is still in th=
e future. In this case, all commands behind the head command will block unt=
il the head command executes at the indicated time.=C2=A0 And, the FIFO is =
not deep so it is pretty easy to fill it up if it is not simultaneously bei=
ng consumed.=C2=A0 I didn&#39;t notice any bug that should cause the FIFO t=
o block. But, the fact that you can run error-free if you don&#39;t use the=
 timed commands is a clue.=C2=A0 I have 2 suggestions: 1) add a delay betwe=
en the set_time_now() and the get_time_now(), and 2) move the get_time_now(=
) below the first set of tune commands.</div><div>Rob</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Nov 23, =
2021 at 4:06 AM &lt;<a href=3D"mailto:emanuele.tolomei@intecs.it">emanuele.=
tolomei@intecs.it</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex"><p>Hi Marcus, thank you</p><p>I tried both changing the co=
mmand-time (up to 1 second) and using UHD version 3.15.0.0.</p><p>The appli=
cation still crashes with the same error.</p><p><br></p><p>terminate called=
 after throwing an instance of &#39;uhd::io_error&#39;</p><p>what():  Envir=
onmentError: IOError: [0/DDC_0] sr_write() failed: EnvironmentError: IOErro=
r: Block ctrl (CE_03_Port_60) no response packet - AssertionError: bool(buf=
f)</p><p>in uint64_t ctrl_iface_impl&lt;_endianness&gt;::wait_for_ack(bool,=
 double) [with uhd::endianness_t _endianness =3D (uhd::endianness_t)0u; uin=
t64_t =3D long unsigned int]</p><p>at /home/emanuele/uhd/host/lib/rfnoc/ctr=
l_iface.cpp:151</p>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000044646005d17607c9--

--===============1169958261114595458==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1169958261114595458==--

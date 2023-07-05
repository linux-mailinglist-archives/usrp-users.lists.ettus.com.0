Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9EF74861B
	for <lists+usrp-users@lfdr.de>; Wed,  5 Jul 2023 16:22:49 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id C62AD38456F
	for <lists+usrp-users@lfdr.de>; Wed,  5 Jul 2023 10:22:47 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1688566967; bh=ilbjqLwkoG3C5Esj5BOUjFDEtoh9w+uUmqAlOvzAIgk=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=oe7XkycqA5+a8abn44bHGC/2M2QUSJaT8DvieJsWXiZr+fxZE2q12nnzsCfSvUwsK
	 ucxVCpnx2thRfiQ24avrFKKCoSteM/TW1W2gp/uAgx2qoKrHf2r9n2lSY5PETmpe1W
	 Olv5TewCOBpSaswkLL1mMvrrYa7nZ4oQEH5k2WF6sJLqWTlCfcRDG/sPDZYNii1k5W
	 saqEVGvaNd/3n+X1B7n1DNmnBDJNtmFkhgtDeYZn+MHmFbWbxINt3go2FTtV31woDM
	 UIuSqE26TyNNaKiFzm+vRF9hFKjHFsEelA2hZbrdsC+WeWTWXdHqM09Jul3C4fle+4
	 i0YbTZ2ozgjrg==
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	by mm2.emwd.com (Postfix) with ESMTPS id A04243849A4
	for <usrp-users@lists.ettus.com>; Wed,  5 Jul 2023 10:21:51 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20221208.gappssmtp.com header.i=@ettus-com.20221208.gappssmtp.com header.b="cHs0nIZQ";
	dkim-atps=neutral
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-9928abc11deso806657166b.1
        for <usrp-users@lists.ettus.com>; Wed, 05 Jul 2023 07:21:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20221208.gappssmtp.com; s=20221208; t=1688566910; x=1691158910;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=A57Va4Cxn3fIBV9tlLzc6NJgAgTeQE4ZhG6ptExR9Cc=;
        b=cHs0nIZQmWKWFRxdI8zKk7tbQ6j9DxycmXZxkHF+QIbFlUYnymrG3uoVy342I5dg+q
         9diMlFhtTrshQ3BWuxTToXiVCLcEXasXyJ1mY/EhQd2u/N2lD9SH9ZJOUTVSzCcAd3et
         jOuzhOQpnAPU62IzXdUW7QCsxeLNISg6A2huoHrqAgmpQtvMB+4TDpFzanRKRk7e/F5E
         6w7+3BX/SdHBRt4pUWPLyomNRwfRAEEOYlijR/xP+7MtChyL/1pgwdiw26vjpo6o8cff
         WZjXmsltf7gCyF5hIlbmboMY+aCk9oAjfNHUedfcxBZPFlNZukpPFrFzway27h+xxNCG
         xHKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688566910; x=1691158910;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A57Va4Cxn3fIBV9tlLzc6NJgAgTeQE4ZhG6ptExR9Cc=;
        b=MeU1nJjQhjSN4wGIyGjsRPddu2CGZi+OHp9M+dgMZKeNU8HTHYsST3FHxWZf8dupWp
         uKdtutTAaQY1RY8qeEjb6pnQPdO2L0ehxDXY4JwXPX2Y4fQOz1illuHHSAJqyw9BDrk9
         M90prSNmaiq74QTXpHuftReJGwRWI/5Wju1f6yLXDq5Sj/eVCtenstjCYcuIkIfRQxgl
         SWzO8E2YyuB0LmuliRuCa1ngkqGubuTUPVFH8cf4Bf9GaBHQBNGZK8HKebaVn1zsDLX8
         0ndoObl/ZdCjZlZ2tMJXfzpd0thySzO3crGFoEzMnXtqrGxUHr/J/9dEfSGBLHSYMCDp
         B1YQ==
X-Gm-Message-State: ABy/qLYkcL+kOYBx/Mj2vIOGOPGFO0xWSc1eBN4F9ZOyuQvWhTLHgb0b
	3I1rDluzupuywpSzfTYQE8FnB6r2c4/evKczLQoTW8lxBfkkhgxqtz8=
X-Google-Smtp-Source: APBJJlEj6ob9THRCupaO3Z0BGu68LYMCcmdB12M8jWqqaC/DYLKCGvD5ppZcTHFMlorPMfkmSjOroY0g/htg8mOrpoM=
X-Received: by 2002:a17:906:5fd1:b0:992:5135:4112 with SMTP id
 k17-20020a1709065fd100b0099251354112mr11248718ejv.32.1688566909908; Wed, 05
 Jul 2023 07:21:49 -0700 (PDT)
MIME-Version: 1.0
References: <b61dcc76-06d4-aef9-5b83-b051a10e396c@gsi.de>
In-Reply-To: <b61dcc76-06d4-aef9-5b83-b051a10e396c@gsi.de>
From: Wade Fife <wade.fife@ettus.com>
Date: Wed, 5 Jul 2023 08:21:33 -0600
Message-ID: <CAFche=hJyyjXf-vuO-=G0OXTtDuC3A4k4+htPy5aoAjuu5nw8A@mail.gmail.com>
To: Philipp Niedermayer <p.niedermayer@gsi.de>
Message-ID-Hash: RPAT3YVOQT4VQZJDYTXKWEYXHU5FW2IY
X-Message-ID-Hash: RPAT3YVOQT4VQZJDYTXKWEYXHU5FW2IY
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com, Jernej Kokalj <jernej.kokalj@cosylab.com>, =?UTF-8?Q?Bla=C5=BE_Kelbl?= <blaz.kelbl@cosylab.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Custom RFNoC block: data throughput bottleneck
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RPAT3YVOQT4VQZJDYTXKWEYXHU5FW2IY/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2581226740430104574=="

--===============2581226740430104574==
Content-Type: multipart/alternative; boundary="000000000000d84f4605ffbe1e0b"

--000000000000d84f4605ffbe1e0b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I suspect your logic isn't processing packets correctly. For example, maybe
the sequence number is wrong on the output packets, or some other header
information is incorrect. Or maybe your AXI-Stream handshake logic is
wrong, causing you to miss samples. Or maybe TLAST isn't being asserted on
the correct sample. Something like that. It's hard to say. But the `D`
could mean simply that the packets going back to your host computer are
incorrectly constructed.

Wade



On Wed, Jul 5, 2023 at 12:16=E2=80=AFAM Philipp Niedermayer <p.niedermayer@=
gsi.de>
wrote:

> Dear all,
>
> we are working on a custom OOT RFNoC Block implementation [1] on a USRP
> X310 and are facing data throughput bottlenecks.
>
> The DSP is controlled via GNU Radio / UHD like this:
> Signal Source -> RFNoC TX Streamer -> custom OOT block -> RFNoC RX
> Streamer -> QT GUI Time Sink
>
> When running the flow graph we get a lot of "DDDD" printed to the console=
,
> i.e. package drop due to buffer overflow. Adding a GNU Radio "Probe rate"
> block shows that the sampling rate before the TX Streamer is 200kSps as
> desired. However, behind the RX Streamer, the sampling rate is only 64 Sp=
s
> (!).
>
> When bypassing our custom VHDL implementation in the OOT Block (i.e.
> assigning all s_out_axis_t* to respective m_in_axis_t*) the flow graph
> works as expected, so the RFNoC part alone works just fine.
>
> The VHDL implementation requires some 100 clock cycles for a sample to
> propagate. But since we use the 200MHz clock, achieving sampling rates of
> 200kSps should not be an issue. The custom OOT block also has an option f=
or
> interpolation (i.e. increasing sampling rate), but the behaviour is the
> same even for interpolation=3D1.
>
> Do you have some hints on how to improve performance? We have already
> tried to
> - Increase the payload FIFO depth from 32 to 128
> - Try both, the context-payload and the data AXI-Stream interface
> - Assert tlast on every sample to reduce packages size
>
> Some things we have considered but are not sure about:
> - MTU size
> - Package size
>
> Thanks for taking the time to share your ideas
> Philipp, Jernej, Bla=C5=BE
>
>
> [1]
> https://git.gsi.de/p.niedermayer/exciter/-/blob/f02ee94ad3358fff313fc14a1=
a8d8494ad68d8ab/rfnoc-beam_exciter/fpga/rfnoc_block_feedback_controller/rfn=
oc_block_feedback_controller.v#L419
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000d84f4605ffbe1e0b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I suspect your logic isn&#39;t processing packets correctl=
y. For example, maybe the sequence number is wrong on the output packets, o=
r some other header information is incorrect. Or maybe your AXI-Stream hand=
shake logic is wrong, causing you to miss samples. Or maybe TLAST isn&#39;t=
 being asserted on the correct sample. Something like that. It&#39;s hard t=
o say. But the `D` could mean simply that the packets going back to your ho=
st computer are incorrectly constructed.<br><div><br></div><div>Wade<br></d=
iv><div><br></div><div><br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 5, 2023 at 12:16=E2=80=AFAM Ph=
ilipp Niedermayer &lt;<a href=3D"mailto:p.niedermayer@gsi.de">p.niedermayer=
@gsi.de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">
 =20
   =20
 =20
  <div style=3D"padding-bottom:1px">
    <p>Dear all,</p>
    <p>we are working on a custom OOT RFNoC Block implementation [1] on
      a USRP X310 and are facing data throughput bottlenecks.</p>
    <p>The DSP is controlled via GNU Radio / UHD like this:<br>
      Signal Source -&gt; RFNoC TX Streamer -&gt; custom OOT block -&gt;
      RFNoC RX Streamer -&gt; QT GUI Time Sink</p>
    <p>When running the flow graph we get a lot of &quot;DDDD&quot; printed=
 to the
      console, i.e. package drop due to buffer overflow. Adding a GNU
      Radio &quot;Probe rate&quot; block shows that the sampling rate befor=
e the
      TX Streamer is 200kSps as desired. However, behind the RX
      Streamer, the sampling rate is only 64 Sps (!).<br>
    </p>
    <p>When bypassing our custom VHDL implementation in the OOT Block
      (i.e. assigning all s_out_axis_t* to respective m_in_axis_t*) the
      flow graph works as expected, so the RFNoC part alone works just
      fine.</p>
    <p>The VHDL implementation requires some 100 clock cycles for a
      sample to propagate. But since we use the 200MHz clock, achieving
      sampling rates of 200kSps should not be an issue. The custom OOT
      block also has an option for interpolation (i.e. increasing
      sampling rate), but the behaviour is the same even for
      interpolation=3D1.<br>
    </p>
    <p>Do you have some hints on how to improve performance? We have
      already tried to<br>
      - Increase the payload FIFO depth from 32 to 128<br>
      - Try both, the context-payload and the data AXI-Stream interface<br>
      - Assert tlast on every sample to reduce packages size</p>
    <p>Some things we have considered but are not sure about:<br>
      - MTU size<br>
      - Package size<br>
    </p>
    <p>Thanks for taking the time to share your ideas<br>
      Philipp, Jernej, Bla=C5=BE<br>
    </p>
    <p><br>
    </p>
    <p>[1]
      <a href=3D"https://git.gsi.de/p.niedermayer/exciter/-/blob/f02ee94ad3=
358fff313fc14a1a8d8494ad68d8ab/rfnoc-beam_exciter/fpga/rfnoc_block_feedback=
_controller/rfnoc_block_feedback_controller.v#L419" target=3D"_blank">https=
://git.gsi.de/p.niedermayer/exciter/-/blob/f02ee94ad3358fff313fc14a1a8d8494=
ad68d8ab/rfnoc-beam_exciter/fpga/rfnoc_block_feedback_controller/rfnoc_bloc=
k_feedback_controller.v#L419</a></p>
    <p><br>
    </p>
    <u></u><u></u>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--000000000000d84f4605ffbe1e0b--

--===============2581226740430104574==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2581226740430104574==--

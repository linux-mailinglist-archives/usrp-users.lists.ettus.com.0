Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
Delivered-To: lists+usrp-users@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mGlICx2fqGmZwAAAu9opvQ
	(envelope-from <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>)
	for <lists+usrp-users@lfdr.de>; Wed, 04 Mar 2026 22:07:41 +0100
X-Original-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 796CA207D2F
	for <lists+usrp-users@lfdr.de>; Wed, 04 Mar 2026 22:07:40 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id AA1D53864EE
	for <lists+usrp-users@lfdr.de>; Wed,  4 Mar 2026 16:07:38 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1772658458; bh=MwPS5SpvzqDHai8/oMmphTBOPa7WVxEnVLZ/O1Ec6GM=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=KmdnalzBNo4pidzdpmh2vp+OhCZMRWinwL+L8ZlmnT3ftwzF0fS41jj7/dpxaDiCr
	 FJlLqk6fU2XGeaniikV20LbtsLW26dbmVDACUC1XO/rEzZzkKxc+7uVp2ZZW3y66iO
	 0LTPD/+ky/hAXFJcd+aZh0NvmeLvBkWugefGg2JPHtpgbREHJil9wv5c5As4krB4Hy
	 fyJwuosq7RxGPZvtzj1kxu6Iq+sUvjaYE/wCHxEAWy20rjZrFQGSP0eKw+OeHGNGKC
	 5HJfoYv+kbVXG3bAvJTPCVcrffbGujeQSyxL38geTYnQtrp9+NslixaUKUf9JrbxtQ
	 dR8y0fDExllnQ==
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 6A6E83864B0
	for <usrp-users@lists.ettus.com>; Wed,  4 Mar 2026 16:06:46 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="BrmpOCEO";
	dkim-atps=neutral
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-899ee491af3so42527916d6.1
        for <usrp-users@lists.ettus.com>; Wed, 04 Mar 2026 13:06:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772658406; cv=none;
        d=google.com; s=arc-20240605;
        b=XepeIzmQORonGny1HHmRCj33VKmYIUsfeqdJT6AO96d4IfdqZnfLlQWQ5l+oqDKhBj
         +ZuLEklVR1CEHMNiFez0fIzhjPe5AWICiuRVfc1vLRBLmNDDy4OUZAnpviID8A7jIYsV
         570oWfEdppeS2gEDmq017M8dVmEtKVGmdqFj2uU3ZKRpoPrKoVLLFUEuxEUAb2iL/G8y
         rP1t95XxV9DBFa9q58tyxoPkVLI4O3xf1ywCeOVm9tamgZsdPwA5XV2oGSDZ+/j+PM6R
         a/iRZA36vSBNdgcWDSynHjHRp/dbzZL9WAPq74GC0+XkmFwINPjEzFGMtsvlh16f1nzd
         bxFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=ZGnKMQd39bECrnMOkOWPo/YThVkL+GwATugahLo8Mto=;
        fh=coLTCVRQ3oJxudDSCc+F10d+hsWal9fApncbsOLe8mQ=;
        b=EqMaA2Z9xMFNDQRub7zB4Us3JihJbiGiuJVbtrEic/O4lapJ5izTWfx+yHLdoyAPtt
         TUspFpS2IqyjcUPBq5qKEdTaFrRZT6DPRDiQylrOFC9fLSF4yYO0nBe0AkKja7on6O4e
         UfxYoqnNvoTBaShuGpAp0t4+Dbvk4HWeHxPQorGN4e238lC+/Y1riCREq1WAZ9m+t9M5
         6E4dJgz4eXwz7lWpEhHOMD28nlK73CyaUWK2Hi90D1LL+dul4ds7fF0E/gdvgRCAHKXg
         jGWeio4gBcevb5dj1oPyrZNdF1Gn+WMrjm4dAgRLMq6zX0K+Rd0qhvW6zMVD8yXN829u
         ZbPQ==;
        darn=lists.ettus.com
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1772658406; x=1773263206; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZGnKMQd39bECrnMOkOWPo/YThVkL+GwATugahLo8Mto=;
        b=BrmpOCEO5fI7M0bi5CyHY76/Z/OcY4VWvsZZsAGYxdN/CFLAnhqHbGqO+AnOR6krjX
         CY6Vk/xnx0vSdeRhfj20pHXZagxjeRPY5zAmA3YDWLdSE3KjOEsxAX/lBeC81+raqsN2
         +N3uqnB67/ZOVptIidvG14CD5C/GEc7cUM6XkzGVRhfmVUMoTqxndKR5ZMrDq6wHIjTj
         TtBWky08O4GDnnScoFJV179vm6jcaBpEpgxK1iL4ejG+bjgCujzrUriaAHo+4F6ursAe
         rItOKPNOkyc1RAlyPL3hiXjE1DyUmBR1DAL6ZO58ph8zViU4YwFjyXphol2PfuN5dxJr
         BwSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772658406; x=1773263206;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZGnKMQd39bECrnMOkOWPo/YThVkL+GwATugahLo8Mto=;
        b=UARhnYpuywOQP7FgUmvrW4r+LlIvcQ9IzBvAR+KIpmPqLbuh2kM5oHJk4w2w7vpBgn
         pCVJUbjwnHJjh7r54EqR+4+mQscbUWzY9u6XGNm2gQ5TD1lDo6j4ochfLchiacSNZfcJ
         YO8TEuY9LtUZmGv7ksRa9SQ8aa/1s89lzVuhFZL9ICa8DZjOwQ97XBxLmCAIMUYl5I1M
         b/raezqRYFJ0l7wYKF7iEFfZ5evRqPqUgx/IgS3w43B8d03F1lIs/LjP7P/SRUvDNSYL
         AE1N6wkUt51COLAyGw+vHucIhOHjSrwvYiZNAXYnW5h7aW+5U2uOd8JY3aqqNbv+Sdd6
         aN/A==
X-Gm-Message-State: AOJu0Yz+du+MtsQViWTDRyKH/esdyiltFlU2q0fINBR0sJDukqNdKKz+
	2/8SfDO1EX4EpIiri4NyHnlrfL+DHnKBNLEr/3+JaLj+2QtzFpaSqy9kT+OLkHfY5uJBN5Eo36a
	z2CBMRBz0T9SMOGxyVCUal/aJPHHEOJF6L8wEmeRynJHeQi+XR5cjssQYTw==
X-Gm-Gg: ATEYQzyevaeQxXh45aLKNUM6+ZuLDaJizJsXIHTtjnTMdykZ3AhJ9HiaCOA/QwD/6u9
	uVXrxBbW5Nxc/TRwgG60OmiGIfY89asldy7Vy4THU7c+tu115Zd2aIDUnuGr0AXEPCOQ7NW7pGz
	awcXe6c/bxrZy9CVL3rfo+4XF4IqUYqiQqEQP0R01d2VrDmqahT+uCieZ6hoXJAWpmHz5UUcP1c
	rLyNgQzy6Rhc7CL1bCraqJbCLUsmtLNLghRZOTdt157+sTMOf4zjZOMtxEAT9afRZefJx0d9jP8
	85KSZH0OHylBSmih/pWTkqDBVr0lNqMC62prWQ==
X-Received: by 2002:a05:6214:3004:b0:89a:173d:9c54 with SMTP id
 6a1803df08f44-89a1997ffaemr44627646d6.8.1772658405494; Wed, 04 Mar 2026
 13:06:45 -0800 (PST)
MIME-Version: 1.0
References: <SJ0PR09MB91268FDF57110D4B6B826462EC93A@SJ0PR09MB9126.namprd09.prod.outlook.com>
 <CAB__hTRGg_=E=WiULHMUYA6iMY1yvgFw5WexYw56NNyrz7nS8g@mail.gmail.com>
 <SA1PR09MB9130FE71184277820E79EAA8EC90A@SA1PR09MB9130.namprd09.prod.outlook.com>
 <CAB__hTRHDpGMBgGY3mWQW15NnmwW2xcE=LFXoHfOL9xmBr54ow@mail.gmail.com> <SA1PR09MB91302FBE7D16180A717F5BD2EC7EA@SA1PR09MB9130.namprd09.prod.outlook.com>
In-Reply-To: <SA1PR09MB91302FBE7D16180A717F5BD2EC7EA@SA1PR09MB9130.namprd09.prod.outlook.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Wed, 4 Mar 2026 22:06:34 +0100
X-Gm-Features: AaiRm51aK5hCl3ZZb_WHWc9hDSvZjOUO44c4An6ht40IBp8Jrk4CKDySiYltbMA
Message-ID: <CAFOi1A4EAHDpoH5ggT6P3FqjaBZ6ZFq1FJfXH4NGw4xHQ-OLcA@mail.gmail.com>
Cc: usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: 43UJXHO2QHVXI7NMRBQB4HVFC56EFXIL
X-Message-ID-Hash: 43UJXHO2QHVXI7NMRBQB4HVFC56EFXIL
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [EXTERNAL] Re: TX DRAM buffer
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/43UJXHO2QHVXI7NMRBQB4HVFC56EFXIL/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0652892603525628939=="
X-Rspamd-Queue-Id: 796CA207D2F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	MISSING_TO(2.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	R_DKIM_ALLOW(-0.20)[emwd.com:s=harmony];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_VERYGOOD(-0.20)[172.104.30.75:from];
	MIME_GOOD(-0.10)[multipart/mixed,multipart/alternative,text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lists,usrp-users=lfdr.de];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+,1:+,2:+,3:~,4:+];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[ettus.com];
	R_DKIM_REJECT(0.00)[ettus-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_NA(0.00)[no SPF record];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	FROM_NEQ_ENVFROM(0.00)[martin.braun@ettus.com,usrp-users-bounces@lists.ettus.com];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	TAGGED_RCPT(0.00)[usrp-users];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.104.16.0/20, country:SG];
	DKIM_TRACE(0.00)[emwd.com:+,ettus-com.20230601.gappssmtp.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,emwd.com:dkim,ettus.com:email]
X-Rspamd-Action: no action

--===============0652892603525628939==
Content-Type: multipart/alternative; boundary="000000000000916117064c393270"

--000000000000916117064c393270
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Eugene,

a couple of things that might clear things up:

- If you are building the DMA FIFO, then yes, it's just a FIFO. Rob was
referring to the buffered mode, which makes the replay block behave like a
FIFO, but the DMA FIFO block is a true FIFO. In that case, ignore that last
paragraph of mine.
  - Not everyone knows how to build custom bitfiles, so I get more
questions on the standard images that use replay blocks.
- If you use a DMA FIFO block in GNU Radio or elsewhere, you still need to
connect it. After that, it's more or less transparent.
- But even if you use a DMA FIFO block, you still care about the SEP buffer
size, because that is *not* in DRAM.
- And yes, if you use additional FIFOs, the latency goes up.

Hope that clears things up.

--M

On Mon, Mar 2, 2026 at 10:56=E2=80=AFPM Eugene Grayver <eugene.grayver@aero=
.org>
wrote:

> Hi Martin,
> Based on your last response, I am a bit confused:
>
>    - Using the replay as FIFO directly is not going to work.
>    - I was going to rebuild the FPGA using the DMA FIFO (not the replay
>    buffer)
>    - With the DMA FIFO:
>    - Latency goes up
>       - This should be transparent to UHD/Gnuradio API =E2=80=94 it just =
appears
>       as a larger input buffer.  Is that correct/
>
>
> Thanks
>
> You say:
> "
> Yes, but the flow control loop operates on the smaller Tx buffers. The id=
ea
> is that the replay/DRAM will be able to always drain the Tx buffer, and
> therefore improve throughput because unlike the radio, it can always
> consume very quickly.
> In practice however, if the host sends out Tx buffer size data, it will
> still wait to send more data until it receives flow control credits from
> the FPGA. Because those have to come over the network, there might still =
be
> a delay and that can add to the overall latency and cause issues with
> throughput.
> Also, when we say the "replay block is acting as a FIFO", it's really onl=
y
> acting as if, like you say. The way this is implemented with
> replay_buffered is by the host sending out lots of stream commands to the
> replay block.
> "
>
> ------------------------------
> *From:* Rob Kossler <rkossler@nd.edu>
> *Sent:* Tuesday, January 27, 2026 11:15 AM
> *To:* Eugene Grayver <eugene.grayver@aero.org>
> *Cc:* usrp-users <usrp-users@lists.ettus.com>
> *Subject:* Re: [EXTERNAL] Re: [USRP-users] TX DRAM buffer
>
> I think that you need to include the tx streamer arg "replay_buffered" or
> perhaps "streamer=3Dreplay_buffered"
>
>
> https://github.com/EttusResearch/uhd/blob/ab8ec9973324299828d48d7a2725893=
9dd6ca837/host/lib/usrp/multi_usrp_rfnoc.cpp#L415
>
>
> On Tue, Jan 27, 2026 at 1:59=E2=80=AFPM Eugene Grayver <eugene.grayver@ae=
ro.org>
> wrote:
>
> Thanks.  I saw notes that seem to indicate that option. Anyone at Ettus/N=
I
> care to chime in as to how to do it?  I found an example for E320 that
> shows an RFNoC .yml with a dram FIFO.  I could make one for N320, but it =
is
> not clear how to use it from gnuradio.
> ------------------------------
> *From:* Rob Kossler <rkossler@nd.edu>
> *Sent:* Tuesday, January 27, 2026 6:45 AM
> *To:* Eugene Grayver <eugene.grayver@aero.org>
> *Cc:* usrp-users <usrp-users@lists.ettus.com>
> *Subject:* [EXTERNAL] Re: [USRP-users] TX DRAM buffer
>
>
> *Do not open links or attachments unless you recognize the sender. If
> unsure, click the Report Phish button or forward the email to OPSEC. *
> Hi Eugene,
> I "think" that the replay block can act as a FIFO in recent UHD images.
> But, there is a possibility I am wrong such that there is a build-time
> parameter that is needed to config this.  Another option would be DPDK if
> you are not already using it.
> Rob
>
> On Mon, Jan 26, 2026 at 7:00=E2=80=AFPM Eugene Grayver <eugene.grayver@ae=
ro.org>
> wrote:
>
> Hi,
>
> The default TX buffer for N32x is 128k samples =3D 512 kB.  The box has 1=
 GB
> of DRAM.  I am getting occasional underflows when streaming at 200 Msps,
> even though the CPU is not very loaded and easily meets the average
> throughput.
>
> I have done all the usual stuff =E2=80=94 isolated cores, pin threads to =
cores,
> etc.
>
> Is there a way to increase the default DRAM buffer size w/out rebuilding
> the FPGA image?
>
> Thanks.
>
> Eugene Grayver, Ph.D.
> Principal Engineer
> 310-336-1274
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000916117064c393270
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Eugene,</div><div><br></div><div>a couple of thing=
s that might clear things up:</div><div><br></div><div>- If you are buildin=
g the DMA FIFO, then yes, it&#39;s just a FIFO. Rob was referring to the bu=
ffered mode, which makes the replay block behave like a FIFO, but the DMA F=
IFO block is a true FIFO. In that case, ignore that last paragraph of mine.=
</div><div>=C2=A0 - Not everyone knows how to build custom bitfiles, so I g=
et more questions on the standard images that use replay blocks.</div><div>=
- If you use a DMA FIFO block in GNU Radio or elsewhere, you still need to =
connect it. After that, it&#39;s more or less transparent.</div><div>- But =
even if you use a DMA FIFO block, you still care about the SEP buffer size,=
 because that is *not* in DRAM.</div><div>- And yes, if you use additional =
FIFOs, the latency goes up.</div><div><br></div><div>Hope that clears thing=
s up.</div><div><br></div><div>--M</div></div><br><div class=3D"gmail_quote=
 gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Mar 2=
, 2026 at 10:56=E2=80=AFPM Eugene Grayver &lt;<a href=3D"mailto:eugene.gray=
ver@aero.org">eugene.grayver@aero.org</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div class=3D"msg-9028157110439100501"=
>




<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hi Martin,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Based on your last response, I am a bit confused:</div>
<ul style=3D"margin-top:0px;margin-bottom:0px;list-style-type:disc">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">Using the replay as FIFO directly is not going t=
o work.</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">I was going to rebuild the FPGA using the DMA FI=
FO (not the replay buffer)</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">With the DMA FIFO:</div>
</li><ul style=3D"margin-top:0px;margin-bottom:0px;list-style-type:circle">
<li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calib=
ri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">Latency goes up</div>
</li><li style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<div role=3D"presentation">This should be transparent to UHD/Gnuradio API =
=E2=80=94 it just appears as a larger input buffer.=C2=A0 Is that correct/<=
/div>
<div role=3D"presentation"><br>
</div>
</li></ul>
</ul>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Thanks</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
You say:</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
&quot;</div>
<div style=3D"text-align:left;text-indent:0px;margin-top:0px;margin-bottom:=
1rem;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helve=
tica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Yes, but the flow control loop operates on the smaller Tx buffers. The idea=
<br>
is that the replay/DRAM will be able to always drain the Tx buffer, and<br>
therefore improve throughput because unlike the radio, it can always<br>
consume very quickly.</div>
<div style=3D"text-align:left;text-indent:0px;margin-top:0px;margin-bottom:=
1rem;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helve=
tica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
In practice however, if the host sends out Tx buffer size data, it will<br>
still wait to send more data until it receives flow control credits from<br=
>
the FPGA. Because those have to come over the network, there might still be=
<br>
a delay and that can add to the overall latency and cause issues with<br>
throughput.</div>
<div style=3D"text-align:left;text-indent:0px;margin-top:0px;margin-bottom:=
1rem;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helve=
tica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Also, when we say the &quot;replay block is acting as a FIFO&quot;, it&#39;=
s really only<br>
acting as if, like you say. The way this is implemented with<br>
replay_buffered is by the host sending out lots of stream commands to the<b=
r>
replay block.</div>
<div style=3D"text-align:left;text-indent:0px;margin-top:0px;margin-bottom:=
1rem;font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helve=
tica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
&quot;</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div id=3D"m_-9028157110439100501appendonsend"></div>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-9028157110439100501divRplyFwdMsg" dir=3D"ltr"><font face=3D"C=
alibri, sans-serif" style=3D"font-size:11pt" color=3D"#000000"><b>From:</b>=
 Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu" target=3D"_blank">rkoss=
ler@nd.edu</a>&gt;<br>
<b>Sent:</b> Tuesday, January 27, 2026 11:15 AM<br>
<b>To:</b> Eugene Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.org" ta=
rget=3D"_blank">eugene.grayver@aero.org</a>&gt;<br>
<b>Cc:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> Re: [EXTERNAL] Re: [USRP-users] TX DRAM buffer</font>
<div>=C2=A0</div>
</div>
<div>
<div dir=3D"ltr">I think that you need to include the tx streamer arg &quot=
;replay_buffered&quot; or perhaps &quot;streamer=3Dreplay_buffered&quot;
<div><br>
</div>
<div><a href=3D"https://github.com/EttusResearch/uhd/blob/ab8ec997332429982=
8d48d7a27258939dd6ca837/host/lib/usrp/multi_usrp_rfnoc.cpp#L415" target=3D"=
_blank">https://github.com/EttusResearch/uhd/blob/ab8ec9973324299828d48d7a2=
7258939dd6ca837/host/lib/usrp/multi_usrp_rfnoc.cpp#L415</a></div>
<div><br>
</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Tue, Jan 27, 2026 at 1:59=E2=80=AFPM Eugene Grayver &lt=
;<a href=3D"mailto:eugene.grayver@aero.org" target=3D"_blank">eugene.grayve=
r@aero.org</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>
<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Thanks.=C2=A0 I saw notes that seem to indicate that option. Anyone at Ettu=
s/NI care to chime in as to how to do it?=C2=A0 I found an example for E320=
 that shows an RFNoC .yml with a dram FIFO.=C2=A0 I could make one for N320=
, but it is not clear how to use it from gnuradio.</div>
<div id=3D"m_-9028157110439100501x_m_3838154123530424774appendonsend"></div=
>
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-9028157110439100501x_m_3838154123530424774divRplyFwdMsg" dir=
=3D"ltr"><font face=3D"Calibri, sans-serif" color=3D"#000000" style=3D"font=
-size:11pt"><b>From:</b> Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu"=
 target=3D"_blank">rkossler@nd.edu</a>&gt;<br>
<b>Sent:</b> Tuesday, January 27, 2026 6:45 AM<br>
<b>To:</b> Eugene Grayver &lt;<a href=3D"mailto:eugene.grayver@aero.org" ta=
rget=3D"_blank">eugene.grayver@aero.org</a>&gt;<br>
<b>Cc:</b> usrp-users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com" tar=
get=3D"_blank">usrp-users@lists.ettus.com</a>&gt;<br>
<b>Subject:</b> [EXTERNAL] Re: [USRP-users] TX DRAM buffer</font>
<div>=C2=A0</div>
</div>
<div>
<p style=3D"background-color:rgb(94,138,180);color:rgb(255,255,255);padding=
:1em;font-size:10pt">
<strong>Do not open links or attachments unless you recognize the sender. I=
f unsure, click the Report Phish button or forward the email to OPSEC.
</strong></p>
<div dir=3D"ltr">
<div dir=3D"ltr">Hi Eugene,
<div>I &quot;think&quot; that the replay block can act as a FIFO in recent =
UHD images.=C2=A0 But, there is a possibility I am wrong such that there is=
 a build-time parameter that is needed to config this.=C2=A0 Another option=
 would be DPDK if you are not already using it.</div>
<div>Rob</div>
</div>
<br>
<div>
<div dir=3D"ltr">On Mon, Jan 26, 2026 at 7:00=E2=80=AFPM Eugene Grayver &lt=
;<a href=3D"mailto:eugene.grayver@aero.org" target=3D"_blank">eugene.grayve=
r@aero.org</a>&gt; wrote:<br>
</div>
<blockquote style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<div>
<div dir=3D"ltr">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
The default TX buffer for N32x is 128k samples =3D 512 kB.=C2=A0 The box ha=
s 1 GB of DRAM.=C2=A0 I am getting occasional underflows when streaming at =
200 Msps, even though the CPU is not very loaded and easily meets the avera=
ge throughput.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
I have done all the usual stuff =E2=80=94 isolated cores, pin threads to co=
res, etc.=C2=A0=C2=A0</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Is there a way to increase the default DRAM buffer size w/out rebuilding th=
e FPGA image?</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Thanks.</div>
<div id=3D"m_-9028157110439100501x_m_3838154123530424774x_m_-82119841505263=
82119Signature">
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Eugene Grayver, Ph.D.</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
Principal Engineer</div>
<div style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cali=
bri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">
310-336-1274</div>
</div>
</div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">
usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">
usrp-users-leave@lists.ettus.com</a><br>
</div>
</blockquote>
</div>
</div>
</div>
</div>
</div>
</blockquote>
</div>
</div>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>

--000000000000916117064c393270--

--===============0652892603525628939==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0652892603525628939==--

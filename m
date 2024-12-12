Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 872029EE716
	for <lists+usrp-users@lfdr.de>; Thu, 12 Dec 2024 13:51:02 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 63059385DF4
	for <lists+usrp-users@lfdr.de>; Thu, 12 Dec 2024 07:50:57 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1734007857; bh=5UWcHqwfhha1Rqbw8ezwLBw5laJE82JlizmhemhO95A=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=J7g413ZgwpWU1zo6dCN9OWCGVG+LsvynL/azWVsmqFF6dYEw22aYzqO/nHpMuW81f
	 Q7rVWgotYZP4Y4P3j8lbtYZ5s5rgNwPke0GUuLn3c/IJEz6Ka8r4V+n3sfId+NhMQ8
	 AgiiIMwA46nIjOeZ2G1WWMbi8riXcHpCkwTDPE0YozxnEDeoIOQMStBbIb/pp7ZRTd
	 c1k3wU+fhbGZ3Pm25Q5+naeS0Lp2IFOaNtz2Tlh0ZGhVbHKbBOZfNtZ0dTG42fT2Qh
	 mon91XSWeOpB99ClXh8Z9TFb34yG+wZzY04nA6GtvjUGwpPZwR2XlzjZiMsCvwDXI4
	 eUZDg8ay8qtWA==
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	by mm2.emwd.com (Postfix) with ESMTPS id 2A0243858DE
	for <usrp-users@lists.ettus.com>; Thu, 12 Dec 2024 07:50:03 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="WJBJPFAb";
	dkim-atps=neutral
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a9a68480164so81200666b.3
        for <usrp-users@lists.ettus.com>; Thu, 12 Dec 2024 04:50:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1734007801; x=1734612601; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=q8CD+aJBm5U9sxxiO6qXV4h/nHdy67uGyzi72u0BRBI=;
        b=WJBJPFAb4U6DAMfGPHYu2STRFdyaqR87aFMPSNIMzpJNErq7Tou5Sv89erxA8VnMD5
         86xt9lEj0E0DU5mJ2PszKLaHDTy51oefUeI4XwGd9DGPxbrUH2qaWJyhFzNy7WhRsPWl
         0J0o75dC6U1W07j+bHO0licDYl7U+nqlE8KyQGfEXu1WFGHSKy5Sa5H4ZL3ru8wWJOkQ
         NnxuYnx8domW24pDqK/erP/J62MRepSRioRtUBZAE/193bEqi5bJsPYaGxy3LlCvT/O9
         P10o471EZ9q2K20opOlpNsKD5O8E3UEoK4SDfr+Wd6/c7E8URcnonjD0wHCp9uqpLgrF
         BS1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734007801; x=1734612601;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q8CD+aJBm5U9sxxiO6qXV4h/nHdy67uGyzi72u0BRBI=;
        b=mvpfveVrPyBD5dzVYeAZWAPD1Nz59ACw5mbaUkdc9VsKf4TEBbZ87js2mG6YD47XrF
         isoy+6K4k2GT7p9WxpMj9qkzj6AQ6C1Yr5oOQ0xYHrnKCZ2xEmMpLh/gBmp+Ry48U2x1
         RJ6/lfdLXL1+B42eQpB/5ztTEggfHcZmq4URDY6ny7QxLvAkxDCbrVDDXN4yCNaTu2a0
         ryJU5xJpSc+KIX0wK1E1tfNWxU67iuREXNcn0M//2oqx3nYsr1fS8CislOpaOprSeUl1
         +JCVX/pT1OBfT29roEiZMob3ZTA3BWkT2IsM0XyROWkggOAaU09ysG9wDmTKK7bwgFSu
         Jx9A==
X-Gm-Message-State: AOJu0YzQQBTArEtgm5r2kQCcUd9FjsH0xbdu1uYAjco2kKg4cw4VwoK2
	ozPFczXWTjUskIxABiLRxfjN9oJkWEu7olRAkgxcMbvSAJcpSkJ/T0NUKl7PLKlzBQqsBmmEnyr
	Lolfz2ZkwmkSjNRUoRowl10jmyVOeh5zJCO9IKaTbxP81R7SujWI=
X-Gm-Gg: ASbGncsiIgegHeEZX/p43aUq5x0Cis2xAc1EedDgDNEDZzIKEPn3oiKEXKFSni4deIU
	STcMOYEHykMfj47Gcp6MAO9SUwiO8bfB+PhwssSheTjFqp6V2CRu9o16hvDhLJsbVSDuyvA==
X-Google-Smtp-Source: AGHT+IHdrCzGDxUIuDdv3zPPVtmLo1WfG/iUaJkUQCjkJUMRCxxb/JO2pCneLAuT23qMHkNN76l8MXyDBDVmZi86R6Y=
X-Received: by 2002:a17:906:3182:b0:aa6:ac9b:6824 with SMTP id
 a640c23a62f3a-aa6c1ae4bbemr319857366b.5.1734007801298; Thu, 12 Dec 2024
 04:50:01 -0800 (PST)
MIME-Version: 1.0
References: <CAAc7u9qNjdOzvLMaa-7P71vBuDDR2F-YELPuPHN52Eh1jgv5yg@mail.gmail.com>
In-Reply-To: <CAAc7u9qNjdOzvLMaa-7P71vBuDDR2F-YELPuPHN52Eh1jgv5yg@mail.gmail.com>
From: Martin Braun <martin.braun@ettus.com>
Date: Thu, 12 Dec 2024 13:49:50 +0100
Message-ID: <CAFOi1A6HHuc0MdZnPXbNOjshxv1aEGQCWWKquFRa40C5i3A33w@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: NZA4VY3TQVFKJGEIMT35CW546M6VYW3R
X-Message-ID-Hash: NZA4VY3TQVFKJGEIMT35CW546M6VYW3R
X-MailFrom: martin.braun@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD Python API: Buffer processing
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NZA4VY3TQVFKJGEIMT35CW546M6VYW3R/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0447278170156463938=="

--===============0447278170156463938==
Content-Type: multipart/alternative; boundary="00000000000008dcda0629122740"

--00000000000008dcda0629122740
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Tim,

The recv() call will return if an EOB is detected, or there's a jump in
timestamps. In other words, using recv(), the only option you have is to
receive bursts one-by-one. As you've probably noticed, you can only return
one metadata object per receive call (hence the discontinuity; the recv()
call wouldn't be able to do what you're asking).

However, that's not necessarily so bad. Internally, the recv() call is just
a loop over a buffer interface (e.g., when using Ethernet packets, it would
fish one Ethernet packet out of a network buffer at a time, look at the
metadata, and then do whatever makes sense).

If you want your Python code to concatenate recv() calls, then use the
return value `num_rx_samps` to index your `rx_buffer`, and add a separate
list of metadata objects.

--M

On Thu, Dec 12, 2024 at 1:24=E2=80=AFPM Tim Vancauwenbergh <
tim.vancauwenbergh13@gmail.com> wrote:

> Hi all,
>
> I am working with the UHD Python API to handle burst-mode data
> transmission and reception. Both the transmitter and receiver are set to =
be
> active at specific times, for a fixed number of samples per burst. This
> process occurs approximately 100 times per second.
>
> Currently, the transmit and receive processes are handled in separate
> threads, where they wait for a timestamp to start their respective
> operations. When both are finished, a new loop begins. The waiting howeve=
r
> can create some late commands. I would like to process the buffer
> separately.
>
> For each RX burst, the following function is called:
> *rx_buffer_size =3D int(5000) # each recv is 500 samples, but we want mor=
e
> space for multiple bursts*
> *rx_buffer =3D np.zeros(rx_buffer_size, dtype=3Dnp.complex64)*
>
> *def rx(start_time, rx_streamer, rx_buffer, rx_metadata):*
> *    global rx_time*
> *    rx_stream_cmd =3D uhd.types.StreamCMD(uhd.types.StreamMode.num_done)=
*
> *    rx_stream_cmd.num_samps =3D 500*
> *    rx_stream_cmd.stream_now =3D False*
> *    rx_stream_cmd.time_spec =3D start_time*
> *    rx_streamer.issue_stream_cmd(rx_stream_cmd)*
>
> *    num_rx_samps =3D rx_streamer.recv(rx_buffer, rx_metadata, timeout=3D=
1.0)*
> *    rx_time =3D rx_metadata.time_spec.get_real_secs()*
>
> Each receive burst consists of exactly 500 samples. However, this approac=
h
> feels inefficient as I am processing each burst individually. My goal is =
to:
>
>    1. *Optimize Efficiency*: Fill a larger buffer with multiple bursts
>    (e.g., 10 bursts =3D 5000 samples) before processing.
>    2. *Preserve Timestamps*: Retain the metadata timestamp for each burst
>    (i.e., every 500th sample) within the larger buffer.
>
> For example, if a buffer holds 10 bursts, I would like:
>
>    - The buffer to contain 5000 samples.
>    - To retrieve the rx_metadata timestamp for the first sample of each
>    burst (at indices 0, 500, 1000, ...).
>
> How can I achieve this efficiently while ensuring accurate timestamp
> extraction for each burst?
>
> Best regards,
> Tim
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--00000000000008dcda0629122740
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Tim,</div><div><br></div><div>The recv() call will=
 return if an EOB is detected, or there&#39;s a jump in timestamps. In othe=
r words, using recv(), the only option you have is to receive bursts one-by=
-one. As you&#39;ve probably noticed, you can only return one metadata obje=
ct per receive call (hence the discontinuity; the recv() call wouldn&#39;t =
be able to do what you&#39;re asking).<br></div><div><br></div><div>However=
, that&#39;s not necessarily so bad. Internally, the recv() call is just a =
loop over a buffer interface (e.g., when using Ethernet packets, it would f=
ish one Ethernet packet out of a network buffer at a time, look at the meta=
data, and then do whatever makes sense).</div><div><br></div><div>If you wa=
nt your Python code to concatenate recv() calls, then use the return value =
`num_rx_samps` to index your `rx_buffer`, and add a separate list of metada=
ta objects.</div><div><br></div><div>--M<br></div></div><br><div class=3D"g=
mail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On =
Thu, Dec 12, 2024 at 1:24=E2=80=AFPM Tim Vancauwenbergh &lt;<a href=3D"mail=
to:tim.vancauwenbergh13@gmail.com">tim.vancauwenbergh13@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><p>Hi all,</p><p>I am working with the UHD Python API to handle bu=
rst-mode data transmission and reception. Both the transmitter and receiver=
 are set to be active at specific times, for a fixed number of samples per =
burst. This process occurs approximately 100 times per second.</p><p>Curren=
tly, the transmit and receive processes are handled in separate threads, wh=
ere they wait for a timestamp to start their respective operations. When bo=
th are finished, a new loop begins. The waiting however can create some lat=
e commands. I would like to process the buffer separately.</p><p>For each R=
X burst, the following function is called:</p><div><div style=3D"color:rgb(=
0,0,0);font-family:Consolas,&quot;Courier New&quot;,monospace;font-size:14p=
x;line-height:19px;white-space:pre-wrap"><div><i>rx_buffer_size =3D int(500=
0) # each recv is 500 samples, but we want more space for multiple bursts</=
i></div><div><i>rx_buffer =3D np.zeros(rx_buffer_size, dtype=3Dnp.complex64=
)</i></div></div></div><div><i><br></i></div><div><div style=3D"line-height=
:19px"><div style=3D"color:rgb(0,0,0);font-family:Consolas,&quot;Courier Ne=
w&quot;,monospace;font-size:14px;white-space:pre-wrap"><i><span style=3D"co=
lor:rgb(0,0,255)">def</span> rx(start_time, rx_streamer, rx_buffer, rx_meta=
data):</i></div><div style=3D"color:rgb(0,0,0);font-family:Consolas,&quot;C=
ourier New&quot;,monospace;font-size:14px;white-space:pre-wrap"><i>=C2=A0 =
=C2=A0 <span style=3D"color:rgb(0,0,255)">global</span> rx_time</i></div><d=
iv style=3D"color:rgb(0,0,0);font-family:Consolas,&quot;Courier New&quot;,m=
onospace;font-size:14px;white-space:pre-wrap"><i>=C2=A0 =C2=A0 rx_stream_cm=
d =3D uhd.types.StreamCMD(uhd.types.StreamMode.num_done)</i></div><div styl=
e=3D"color:rgb(0,0,0);font-family:Consolas,&quot;Courier New&quot;,monospac=
e;font-size:14px;white-space:pre-wrap"><i>=C2=A0 =C2=A0 rx_stream_cmd.num_s=
amps =3D 500</i></div><div style=3D"color:rgb(0,0,0);font-family:Consolas,&=
quot;Courier New&quot;,monospace;font-size:14px;white-space:pre-wrap"><i>=
=C2=A0 =C2=A0 rx_stream_cmd.stream_now =3D <span style=3D"color:rgb(0,0,255=
)">False</span></i></div><div style=3D"color:rgb(0,0,0);font-family:Consola=
s,&quot;Courier New&quot;,monospace;font-size:14px;white-space:pre-wrap"><i=
>=C2=A0 =C2=A0 rx_stream_cmd.time_spec =3D start_time</i></div><div style=
=3D"color:rgb(0,0,0);font-family:Consolas,&quot;Courier New&quot;,monospace=
;font-size:14px;white-space:pre-wrap"><i>=C2=A0 =C2=A0 rx_streamer.issue_st=
ream_cmd(rx_stream_cmd)</i></div><div style=3D"color:rgb(0,0,0);font-family=
:Consolas,&quot;Courier New&quot;,monospace;font-size:14px;white-space:pre-=
wrap"><i><br></i></div><div style=3D"color:rgb(0,0,0);font-family:Consolas,=
&quot;Courier New&quot;,monospace;font-size:14px;white-space:pre-wrap"><i>=
=C2=A0 =C2=A0 num_rx_samps =3D rx_streamer.recv(rx_buffer, rx_metadata, tim=
eout=3D<span style=3D"color:rgb(9,134,88)">1.0</span>)</i></div><div style=
=3D"color:rgb(0,0,0);font-family:Consolas,&quot;Courier New&quot;,monospace=
;font-size:14px;white-space:pre-wrap"><i>=C2=A0 =C2=A0 rx_time =3D rx_metad=
ata.time_spec.get_real_secs()</i></div><div><p>Each receive burst consists =
of exactly 500 samples. However, this approach feels inefficient as I am pr=
ocessing each burst individually. My goal is to:</p><ol><li><strong>Optimiz=
e Efficiency</strong>: Fill a larger buffer with multiple bursts (e.g., 10 =
bursts =3D 5000 samples) before processing.</li><li><strong>Preserve Timest=
amps</strong>: Retain the metadata timestamp for each burst (i.e., every 50=
0th sample) within the larger buffer.</li></ol><p>For example, if a buffer =
holds 10 bursts, I would like:</p><ul><li>The buffer to contain 5000 sample=
s.</li><li>To retrieve the <code>rx_metadata</code> timestamp for the first=
 sample of each burst (at indices 0, 500, 1000, ...).</li></ul><p>How can I=
 achieve this efficiently while ensuring accurate timestamp extraction for =
each burst?</p><p>Best regards,<br>Tim</p></div></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--00000000000008dcda0629122740--

--===============0447278170156463938==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0447278170156463938==--

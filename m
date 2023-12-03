Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 801C58020A5
	for <lists+usrp-users@lfdr.de>; Sun,  3 Dec 2023 05:36:08 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 019A9384BFF
	for <lists+usrp-users@lfdr.de>; Sat,  2 Dec 2023 23:36:07 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701578167; bh=5JLvPweoUkOu7R+yMF24EMAfWFvKwxewm9f+sf/kcqY=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=iJAkfJTOaCIoFseyMX82dje+yDRKNyDm/SCzRkb7h4DCgAUJkfxic1FInIcwKslvi
	 l0l/+zE9BtFmYMKuE1NgvUOwm4Gzzw/u88BUs/hqw+9co2QwxojlTXboXNP6lVgvqd
	 RtHnEpiuyp5x8aVGfqf3W01izoBWj9XfpYB1dxVAopKse5xUaWd0mcnZnleSdNHgeK
	 2t/PjuhwqNiOlkhbDhWnKZBLXCzwu7tmATqxvQcWMKPcy0Xe4pvLTa5QbXGmeZGNNq
	 ITztqfB/DYrVnWNI7xgdfIPhJzO5iBABvR2VYXerJLFuR7z83IyBdTRlpzQhF7yRjA
	 /H+zNQ0npX7VQ==
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 2D0CE3845DF
	for <usrp-users@lists.ettus.com>; Sat,  2 Dec 2023 23:35:16 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20230601.gappssmtp.com header.i=@ettus-com.20230601.gappssmtp.com header.b="eP2Vg6IU";
	dkim-atps=neutral
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-a196f84d217so315081866b.3
        for <usrp-users@lists.ettus.com>; Sat, 02 Dec 2023 20:35:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20230601.gappssmtp.com; s=20230601; t=1701578116; x=1702182916; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Ibrv91ySJrQWA9MdNslfRWjg0j4CpW7l6E6rnGf9838=;
        b=eP2Vg6IUl/wbwkMrmzD6MCCcYqaGK7bee40LLscVbjXs/h5exfyGQfoPPcKj9EHiID
         eBcAM7+l2zysEjKTAr1J/qDNFFuJqVp4yF3NSMIld5T8k4QfXN1RrFgvExUCKNZJpfOS
         EoDmIVlUA8EoIEYg+JqjreVGw+yXiTVoSH07fyO3ID64olRmVkexQqKQM3HAs75SwHPk
         nJbqOAz/pNR7Fr7aP7o/VDd+AzBJIgl2sCJRFsNKhblaNBo5x83fTBF9osvKIR/0D8cS
         8hCAN6/T8i+CEnWDdDAH/w2QKD90VprPJapYrB+oafvEywHnGA/4892Zn5AKE3G6HOVb
         zl3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701578116; x=1702182916;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ibrv91ySJrQWA9MdNslfRWjg0j4CpW7l6E6rnGf9838=;
        b=Duj6ei1OTTmC1iL+gSwWdsaZkGYwnLHawG5o4kBAlTZNHe/wzJOqCiouf9PcCGCykN
         rtB4ugqz81C03hD74HowO8ES7OHI1ZugQ0K/QcVtW76GL9jpMIo8UdRZUtUjt5fZ7BqS
         I7BPpC5lE+hjkNJAcFg9bLlMjIOPGr5+SxamoXyZXB8una36IlbCFO0+yYvn9H2LBuMc
         K9J0s1jcxEOwSsiUXj8RvWIKAS39eHd0rXsSbQ2hyoExMtWEzsOm3YCR8iygeOEg0ds2
         HXn2zGIpPCWJUwtGiZ9/g6VRAHxCGShhd4mVWndmTT8Q2U6isDXm7yaieI+Zzp7gVlzR
         IyjA==
X-Gm-Message-State: AOJu0YyjZ3w5wVabiWI2vezl8Fm5pPf48Vz/TIESEJEDdOwxHmo+n4EZ
	ThX0UEKdRmQbab167ntBegL9ZOVQLz+B5y0jOctCJOt0
X-Google-Smtp-Source: AGHT+IHkIf5SRINWRAyH6+x4z/4fZE26xqjlj9bcYvFasljbEcVYhVNSZjjHKxbOo52LNeMq9qNrou5cha5kfyi4Bf8=
X-Received: by 2002:a17:906:74cf:b0:a19:a1ba:8cbc with SMTP id
 z15-20020a17090674cf00b00a19a1ba8cbcmr2206121ejl.90.1701578115536; Sat, 02
 Dec 2023 20:35:15 -0800 (PST)
MIME-Version: 1.0
References: <RQcMoxvYw4gARGFxJfWdMtDr5m2XjAbl0WAq4e4bj4@lists.ettus.com>
In-Reply-To: <RQcMoxvYw4gARGFxJfWdMtDr5m2XjAbl0WAq4e4bj4@lists.ettus.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Sat, 2 Dec 2023 22:34:59 -0600
Message-ID: <CAFche=ipqeVtQR+v+Pq=8s-F49xuFU7kzfRJWc0ELbWXqdjWPw@mail.gmail.com>
To: enrico.petraglio@heig-vd.ch
Message-ID-Hash: NAKFGKCI5I3QAY4OJMA3A72DNWLUFQSC
X-Message-ID-Hash: NAKFGKCI5I3QAY4OJMA3A72DNWLUFQSC
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: rfnoc_image_builder error with uhd4.6
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/NAKFGKCI5I3QAY4OJMA3A72DNWLUFQSC/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6192916184950286298=="

--===============6192916184950286298==
Content-Type: multipart/alternative; boundary="0000000000002268cb060b9387e5"

--0000000000002268cb060b9387e5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Enrico,

The line numbers in the traceback don't seem to match UHD 4.6. Can you
check if you maybe have different or multiple versions installed? And
double check that the rfnoc_image_builder being called is indeed the
version for UHD 4.6?

For example, if you installed from source, double check that the install
paths match what you get when you type "which rfnoc_image_builder". You can
also run "uhd_config_info --version" to see if the reported version matches
UND 4.6.

Thanks,

Wade

On Fri, Dec 1, 2023 at 9:21=E2=80=AFAM <enrico.petraglio@heig-vd.ch> wrote:

> Hi,
>
> I have UHD version 4.6 installed and am currently trying to follow the RF=
NOC
> tutorial <https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.0>. I
> managed to install everything correctly and then tried to create a
> bitstream as shown in the documentation.
>
> *$ cd <repo>/fpga/usrp3/top/x300/*
>
> *$ rfnoc_image_builder -y ./x310_rfnoc_image_core.yml -t X310_XG*
>
> First I get this message:
>
> *[ERR] FPGA path not found. Specify with --fpga-dir argument.*
>
> I then modified the command as follows:
>
> *$ rfnoc_image_builder -F <repo>/fpga -y ./x310_rfnoc_image_core.yml -t
> X310_XG*
>
> At this point I get the following output:
>
> *[INF] Using FPGA directory <repo>/fpga*
>
> *[INF] Selected device x310*
>
> *[INF] Using io_signatures.yml from /usr/local/share/uhd/rfnoc/core.*
>
> *[INF] Using x310_bsp.yml from /usr/local/share/uhd/rfnoc/core.*
>
> *[INF] Adding block description from duc.yml
> (/usr/local/share/uhd/rfnoc/blocks).*
>
> *[INF] Adding block description from keep_one_in_n.yml
> (/usr/local/share/uhd/rfnoc/blocks).*
>
> *[INF] Adding block description from axi_ram_fifo.yml
> (/usr/local/share/uhd/rfnoc/blocks).*
>
> *[INF] Adding block description from radio_1x64.yml
> (/usr/local/share/uhd/rfnoc/blocks).*
>
> *Traceback (most recent call last):*
>
> * File "/usr/local/bin/rfnoc_image_builder", line 240, in <module>*
>
> * sys.exit(main())*
>
> * File "/usr/local/bin/rfnoc_image_builder", line 219, in main*
>
> * image_builder.build_image(*
>
> * File
> "/usr/local/lib/python3/dist-packages/uhd/imgbuilder/image_builder.py",
> line 922, in build_image*
>
> * blocks =3D read_block_descriptions(signatures_conf, *block_paths)*
>
> * File
> "/usr/local/lib/python3/dist-packages/uhd/imgbuilder/image_builder.py",
> line 609, in read_block_descriptions*
>
> * blocks[filename] =3D IOConfig(block, signatures)*
>
> * File
> "/usr/local/lib/python3/dist-packages/uhd/imgbuilder/image_builder.py",
> line 152, in __init__*
>
> * expand_io_port_desc(getattr(self, "io_ports"), signatures)*
>
> * File
> "/usr/local/lib/python3/dist-packages/uhd/imgbuilder/image_builder.py",
> line 115, in expand_io_port_desc*
>
> * for signature in signatures[io_port["type"]]["ports"]:*
>
> *KeyError: 'ctrl_port'*
>
>
> Is anyone aware of any issues with RFNOC and UHD 4.6 (note that I get the
> same result with UHD 4.5)?
>
> Thanks in advance for the help.
>
>
> Enrico
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000002268cb060b9387e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Enrico,<div><br></div><div>The line numbers in the trac=
eback don&#39;t seem to match UHD 4.6. Can you check if you maybe have diff=
erent or multiple versions installed? And double check that the rfnoc_image=
_builder being called is indeed the version for UHD 4.6?</div><div><br></di=
v><div>For example, if you installed from source, double check that the ins=
tall paths match what you get when you type &quot;which rfnoc_image_builder=
&quot;. You can also run &quot;uhd_config_info --version&quot; to see if th=
e reported version matches UND 4.6.</div><div><br></div><div>Thanks,</div><=
div><br></div><div>Wade</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Fri, Dec 1, 2023 at 9:21=E2=80=AFAM &lt;<a=
 href=3D"mailto:enrico.petraglio@heig-vd.ch">enrico.petraglio@heig-vd.ch</a=
>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p>=
Hi, </p><p>I have UHD version 4.6 installed and am currently trying to foll=
ow the <a href=3D"https://kb.ettus.com/Getting_Started_with_RFNoC_in_UHD_4.=
0" title=3D"RFNOC tutorial" target=3D"_blank">RFNOC tutorial</a>. I managed=
 to install everything correctly and then tried to create a bitstream as sh=
own in the documentation. </p><p><em>$ cd &lt;repo&gt;/fpga/usrp3/top/x300/=
</em></p><p><em>$ rfnoc_image_builder -y ./x310_rfnoc_image_core.yml -t X31=
0_XG</em></p><p>First I get this message:</p><p><em>[ERR] FPGA path not fou=
nd. Specify with --fpga-dir argument.</em></p><p>I then modified the comman=
d as follows:</p><p><em>$ rfnoc_image_builder -F &lt;repo&gt;/fpga -y ./x31=
0_rfnoc_image_core.yml -t X310_XG</em></p><p>At this point I get the follow=
ing output:</p><p><em>[INF] Using FPGA directory &lt;repo&gt;/fpga</em></p>=
<p><em>[INF] Selected device x310</em></p><p><em>[INF] Using io_signatures.=
yml from /usr/local/share/uhd/rfnoc/core.</em></p><p><em>[INF] Using x310_b=
sp.yml from /usr/local/share/uhd/rfnoc/core.</em></p><p><em>[INF] Adding bl=
ock description from duc.yml (/usr/local/share/uhd/rfnoc/blocks).</em></p><=
p><em>[INF] Adding block description from keep_one_in_n.yml (/usr/local/sha=
re/uhd/rfnoc/blocks).</em></p><p><em>[INF] Adding block description from ax=
i_ram_fifo.yml (/usr/local/share/uhd/rfnoc/blocks).</em></p><p><em>[INF] Ad=
ding block description from radio_1x64.yml (/usr/local/share/uhd/rfnoc/bloc=
ks).</em></p><p><em>Traceback (most recent call last):</em></p><p><em>  Fil=
e &quot;/usr/local/bin/rfnoc_image_builder&quot;, line 240, in &lt;module&g=
t;</em></p><p><em>    sys.exit(main())</em></p><p><em>  File &quot;/usr/loc=
al/bin/rfnoc_image_builder&quot;, line 219, in main</em></p><p><em>    imag=
e_builder.build_image(</em></p><p><em>  File &quot;/usr/local/lib/python3/d=
ist-packages/uhd/imgbuilder/image_builder.py&quot;, line 922, in build_imag=
e</em></p><p><em>    blocks =3D read_block_descriptions(signatures_conf, *b=
lock_paths)</em></p><p><em>  File &quot;/usr/local/lib/python3/dist-package=
s/uhd/imgbuilder/image_builder.py&quot;, line 609, in read_block_descriptio=
ns</em></p><p><em>    blocks[filename] =3D IOConfig(block, signatures)</em>=
</p><p><em>  File &quot;/usr/local/lib/python3/dist-packages/uhd/imgbuilder=
/image_builder.py&quot;, line 152, in __init__</em></p><p><em>    expand_io=
_port_desc(getattr(self, &quot;io_ports&quot;), signatures)</em></p><p><em>=
  File &quot;/usr/local/lib/python3/dist-packages/uhd/imgbuilder/image_buil=
der.py&quot;, line 115, in expand_io_port_desc</em></p><p><em>    for signa=
ture in signatures[io_port[&quot;type&quot;]][&quot;ports&quot;]:</em></p><=
p><em>KeyError: &#39;ctrl_port&#39;</em></p><p><br></p><p>Is anyone aware o=
f any issues with RFNOC and UHD 4.6 (note that I get the same result with U=
HD 4.5)?</p><p>Thanks in advance for the help.</p><p><br></p><p>Enrico</p>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000002268cb060b9387e5--

--===============6192916184950286298==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6192916184950286298==--

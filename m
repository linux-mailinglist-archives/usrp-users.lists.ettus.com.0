Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id E5E598134C7
	for <lists+usrp-users@lfdr.de>; Thu, 14 Dec 2023 16:29:20 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E0F683854CA
	for <lists+usrp-users@lfdr.de>; Thu, 14 Dec 2023 10:29:19 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1702567759; bh=8Z8b3E7XucHmxQK7b6setUmhUIqB90yAxpeVLqIB8hA=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=mG9vMij5osEcSAkFkumiKl+THViISfETzaq++kboYV0UkyY1fJQpcjHa7YsmZXJfk
	 f4VZw5wuSQqaQ/ECSBjwi9tGTPWJrcDFGowB7iafM4W8eDxxBQz4BN6poQutnSwEq2
	 fi7PJKqlcI/iAoixcCFq8fQEfWf6/YpW75PKqz81e/NQlBJtvkj61SBgQCozjHFLVi
	 EBrk5HDjWQkCQyaWfCoiscZ34IZi4ZPd+pxsyxTFUr+ie0MR6+EnIvVxWVLgt97zo8
	 2N6UVDaZee5UniNpkbWhdvc8fmEZ+GaHiQj/TVr98AKZdrj+xjT5k12U6V8ZrZejJx
	 5bpdMWW7ISE3w==
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	by mm2.emwd.com (Postfix) with ESMTPS id 4D986385463
	for <usrp-users@lists.ettus.com>; Thu, 14 Dec 2023 10:29:15 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="UU74MSs2";
	dkim-atps=neutral
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-6cea0fd9b53so5261289b3a.1
        for <usrp-users@lists.ettus.com>; Thu, 14 Dec 2023 07:29:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702567754; x=1703172554; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=AauwUlxTIgJLdPbCACHYMO90w+ijatOd3xf8Qz2RDXA=;
        b=UU74MSs2i5JovVshjDGugx5vsO/j/ssnPwdNTb3y9pYnyPFNhMn2PrtmsvqlqEUBzK
         nhkOaBNp2TDmkEX/VVUnNHPnt74ly4nlo/Pdw51gC8X+y/6BrJkLHS13soHZwitbcQku
         f9cpbGHCpttWYwt2eHj01C62PRIc5w1dQneeLvm++Wsgpn8nN9pfzHCyMaEzaKG83WBt
         TTQ/v8cqAhT5vGcKXo2yEax0kQLJG+S2vgP8Ucorq+QMxzQzKhU8dIFt9U+v+8HJK1Tp
         4WP/xGvpLSNQIkLVof6kluqYiutDoDVmJa88RwZTfPGcjeTZ9ceJkHWAFKRfYF3sx1Fq
         nZDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702567754; x=1703172554;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AauwUlxTIgJLdPbCACHYMO90w+ijatOd3xf8Qz2RDXA=;
        b=ueGkB5R7VFi7gWQ9YULn+oF9lkqjzTfabaiOetHVN4awTp5gSUbbKYMwgN4rXoYWjW
         vdrIjICHoFNSupI1RjfioC/6Q9nV1gfkFKOMX0nA8Xfk6wYE5jhsCXrm9SAjYlOJ9lcR
         1YeX6mtqDeMtlzLyEz6y6alzvbnFEBNiLsu4WIH8yKqVzfzoJXP73uKnjlh9ytHsgvFU
         B9ihCHiy544hEJeFV59bZQzQHYhT1dOKjhcaczP66Ui1W62ApIRo/giH6CcESk9JgqUj
         OWcKng5CHCa2qTcr9KZcfT7cjcIMfF2cHskeiB+rCvArAKt/tM0PrkiBtAD6eP+Dr564
         X0ow==
X-Gm-Message-State: AOJu0YyOq8fmU/YHj6/ZTbLT88u410VDa9bOW4P+RJTys+EUVRlogsUc
	nMel4EACXvCWMlNc82tbX2Au2dTl4qKEoWtUS89thYmRq4I=
X-Google-Smtp-Source: AGHT+IGMlqv1mZHkLwzf4DbK7+cxWWgEPWHhRnl2yEL2uUKl4fxIBo2ApwXmoUpCeX7UgeNR5iyQajx9haRUayxWmAw=
X-Received: by 2002:aa7:888c:0:b0:6ce:93bf:b778 with SMTP id
 z12-20020aa7888c000000b006ce93bfb778mr5700062pfe.44.1702567754162; Thu, 14
 Dec 2023 07:29:14 -0800 (PST)
MIME-Version: 1.0
References: <CAFPzw1kOz59xv_tRZW7X8jntTLHS-szF_vUvzS5pE8KaGKExtg@mail.gmail.com>
 <CAB__hTTzgcb1p0Gut3qL2U2uvTQ9wRXVHg9EfJ080RC-LETg_A@mail.gmail.com>
In-Reply-To: <CAB__hTTzgcb1p0Gut3qL2U2uvTQ9wRXVHg9EfJ080RC-LETg_A@mail.gmail.com>
From: Anabel Almodovar <anabel.almodovar@gmail.com>
Date: Thu, 14 Dec 2023 16:29:02 +0100
Message-ID: <CAFPzw1kn-j45P_7jf6cMG-kLQiz3zCTYjHog49nPXB+KswUKUw@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
Message-ID-Hash: 62KLMIZEKMKE4ELVNWAKPIS3FJHBEVFI
X-Message-ID-Hash: 62KLMIZEKMKE4ELVNWAKPIS3FJHBEVFI
X-MailFrom: anabel.almodovar@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: streamer error X310
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/62KLMIZEKMKE4ELVNWAKPIS3FJHBEVFI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============5639599146505916309=="

--===============5639599146505916309==
Content-Type: multipart/alternative; boundary="0000000000003165c9060c79f238"

--0000000000003165c9060c79f238
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Dear Rob

Thank you for your answer.
I make use of the CDA-2990 octoclock as a source of synchronization between
both USRPs, in addition to local oscillator sharing. I use dual 10GigEth
connections and a MTU of 9000 to connect the USRPs to the PC.

Due to various compatibility issues I am unable to upgrade the system.

When I work with a sample rate of 10MSps I don't get problems but when I
increase to 25MSps I start to get the error. I need them working with
100MSps. I have tried changing the CPU governor to "performance" to get the
maximum working frequency (*sudo cpupower frequency-set --governor
performance*), as well as changing the number of network interface
descriptors to maximum (*sudo ethtool -G <interface> tx <max> rx <max>*),
or increasing the dirty memory buffer (*sudo sysctl -w vm.dirty_ratio=3D80;
sudo sysctl -w vm.dirty_background_ratio=3D50*), but I still get the same
problem.

Regards,
Anabel

El jue, 14 dic 2023 a las 15:38, Rob Kossler (<rkossler@nd.edu>) escribi=C3=
=B3:

> Hi Anabel,
> How are you sync-ing the clocks on the two units? Do you have an external
> PPS source and are you configuring both devices to use this external sour=
ce?
>
> Finally, do you have the ability to upgrade your OS and your UHD versions=
?
> There aren't many user's that are using UHD 3.12 so if you have issues, i=
t
> will be hard to get support.
> Rob
>
> On Thu, Dec 14, 2023 at 5:20=E2=80=AFAM Anabel Almodovar <
> anabel.almodovar@gmail.com> wrote:
>
>> Dear all,
>>
>> I am trying to make an acquisition with two X310 equipped with two
>> TwinRx. I am using Ubuntu 16.04 LTS 64-bit and UHD 3.12. My PC contains
>> 128GB RAM and an Intel=C2=AE Xeon(R) Silver 4114 CPU @ 2.20GHz =C3=97 40=
 and a 4TB
>> SSD. I have modified the example rx_samples_to_file.cpp code to get 8
>> channels and I get the following error:
>>
>> *D*
>> *[ERROR] [STREAMER] The receive packet handler failed to time-align
>> packets. 1002 received packets were processed by the handler. However, a
>> timestamp match could not be determined.*
>> *Timeout while streaming*
>>
>> *[ERROR] [X300] 192.168.60.2 <http://192.168.60.2>: x300 fw communicatio=
n
>> failure #1*
>> *EnvironmentError: IOError: x300 fw poke32 - reply timed out*
>> *[ERROR] [UHD] An unexpected exception was caught in a task loop.The tas=
k
>> loop will now exit, things may not work.AssertionError: reply.sequence =
=3D=3D
>> request.sequence*
>> *  in virtual void
>> x300_ctrl_iface_enet::__poke32(uhd::wb_iface::wb_addr_type, uint32_t)*
>> *  at
>> /home/rs3_lab/workarea-uhd/uhd/host/lib/usrp/x300/x300_fw_ctrl.cpp:135*
>>
>> I don't know how to solve the Timeout problem, I have tried to start the
>> acquisition 1.1 sg in time. But it didn't work.
>>
>>
>> *        stream_cmd.stream_now =3D false;        stream_cmd.time_spec =
=3D
>> usrp->get_time_last_pps(0)+1.1;*
>>
>> What is the problem and how can I fix it?
>>
>> Regards,
>> Anabel
>>
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--0000000000003165c9060c79f238
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Dear Rob</div><div><br></div><div>Th=
ank you for your answer. <br></div><div>I make use of the CDA-2990 octocloc=
k as a source of synchronization between both USRPs, in addition to local o=
scillator sharing. I use dual 10GigEth connections and a MTU of 9000 to con=
nect the USRPs to the PC. <br><br>Due to various compatibility issues I am =
unable to upgrade the system. <br><br>When I work with a sample rate of 10M=
Sps I don&#39;t get problems but when I increase to 25MSps I start to get t=
he error. I need them working with 100MSps. I have tried changing the CPU g=
overnor to &quot;performance&quot; to get the maximum working frequency (<i=
>sudo cpupower frequency-set --governor performance</i>), as well as changi=
ng the number of network interface descriptors to maximum (<i>sudo ethtool =
-G &lt;interface&gt; tx &lt;max&gt; rx &lt;max&gt;</i>), or increasing the =
dirty memory buffer (<i>sudo sysctl -w vm.dirty_ratio=3D80; sudo sysctl -w =
vm.dirty_background_ratio=3D50</i>), but I still get the same problem.</div=
><div><br></div><div>Regards,<br></div><div>Anabel<br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El jue, 14 dic =
2023 a las 15:38, Rob Kossler (&lt;<a href=3D"mailto:rkossler@nd.edu">rkoss=
ler@nd.edu</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">Hi Anabel,<div>How are=
 you sync-ing the clocks on the two units? Do you have an external PPS sour=
ce and are you configuring both devices to use this external source?</div><=
div><br></div><div>Finally, do you have the ability to upgrade your OS and =
your UHD versions? There aren&#39;t many user&#39;s that are using UHD 3.12=
 so if you have issues, it will be hard to get support.</div><div>Rob</div>=
</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Thu, Dec 14, 2023 at 5:20=E2=80=AFAM Anabel Almodovar &lt;<a href=3D"mai=
lto:anabel.almodovar@gmail.com" target=3D"_blank">anabel.almodovar@gmail.co=
m</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"=
><div dir=3D"ltr"><div></div><div>Dear all,</div><div><br></div><div>I am t=
rying to make an acquisition with two X310 equipped with two TwinRx. I am u=
sing Ubuntu 16.04 LTS 64-bit and UHD 3.12. My PC contains 128GB RAM and an =
Intel=C2=AE Xeon(R) Silver 4114 CPU @ 2.20GHz =C3=97 40 and a 4TB SSD. I ha=
ve modified the example rx_samples_to_file.cpp code to get 8 channels and I=
 get the following error:<br><br></div><div><div><i><span style=3D"font-fam=
ily:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-ser=
if;font-size:12pt;color:rgb(0,0,0)">D</span></i></div><div><i><span style=
=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvet=
ica,sans-serif;font-size:12pt;color:rgb(0,0,0)">[ERROR]
 [STREAMER] The receive packet handler failed to time-align packets.=20
1002 received packets were processed by the handler. However, a=20
timestamp match could not be determined.</span></i></div><div><i><span styl=
e=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helve=
tica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Timeout while streaming</s=
pan></i></div><div><i><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,A=
ptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,=
0,0)"><br aria-hidden=3D"true"></span></i></div><div><i><span style=3D"font=
-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans=
-serif;font-size:12pt;color:rgb(0,0,0)">[ERROR] [X300] <a href=3D"http://19=
2.168.60.2" target=3D"_blank">192.168.60.2</a>: x300 fw communication failu=
re #1</span></i></div><div><i><span style=3D"font-family:Aptos,Aptos_Embedd=
edFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;colo=
r:rgb(0,0,0)">EnvironmentError: IOError: x300 fw poke32 - reply timed out</=
span></i></div><div><i><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,=
Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0=
,0,0)">[ERROR]
 [UHD] An unexpected exception was caught in a task loop.The task loop=20
will now exit, things may not work.AssertionError: reply.sequence =3D=3D=20
request.sequence</span></i></div><div><i><span style=3D"font-family:Aptos,A=
ptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,sans-serif;font-siz=
e:12pt;color:rgb(0,0,0)">=C2=A0 in virtual void x300_ctrl_iface_enet::__pok=
e32(uhd::wb_iface::wb_addr_type, uint32_t)</span></i></div><div><i><span st=
yle=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Hel=
vetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">=C2=A0 at /home/rs3_lab/=
workarea-uhd/uhd/host/lib/usrp/x300/x300_fw_ctrl.cpp:135</span></i></div><d=
iv><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,=
Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br></span></=
div><div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontSe=
rvice,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">I don&#=
39;t know how to solve the Timeout problem, I have tried to start the acqui=
sition 1.1 sg in time. But it didn&#39;t work. <br><br><i>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 stream_cmd.stream_now =3D false;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
stream_cmd.time_spec =3D usrp-&gt;get_time_last_pps(0)+1.1;</i></span></div=
><div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServi=
ce,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br></span=
></div><div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFon=
tService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">What=
 is the problem and how can I fix it? <br></span></div><div><span style=3D"=
font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helvetica,=
sans-serif;font-size:12pt;color:rgb(0,0,0)"><br></span></div><div><span sty=
le=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Calibri,Helv=
etica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Regards,</span></div><div=
><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Ca=
libri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Anabel<br></spa=
n></div><div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFo=
ntService,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br=
></span></div></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div></div>
</blockquote></div></div>

--0000000000003165c9060c79f238--

--===============5639599146505916309==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============5639599146505916309==--

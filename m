Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D48CE0C12
	for <lists+usrp-users@lfdr.de>; Tue, 22 Oct 2019 20:57:48 +0200 (CEST)
Received: from [::1] (port=48500 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1iMzLn-0005Xn-6K; Tue, 22 Oct 2019 14:57:47 -0400
Received: from mail-qt1-f170.google.com ([209.85.160.170]:46980)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <patchvonbraun@gmail.com>)
 id 1iMzLj-0005SU-TA
 for USRP-users@lists.ettus.com; Tue, 22 Oct 2019 14:57:43 -0400
Received: by mail-qt1-f170.google.com with SMTP id u22so28319320qtq.13
 for <USRP-users@lists.ettus.com>; Tue, 22 Oct 2019 11:57:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=content-transfer-encoding:from:mime-version:subject:date:message-id
 :references:cc:in-reply-to:to;
 bh=J98m9KYkEOwzBwR4gJbGf5LmFEZVdcyB2+O4ycMEqDk=;
 b=jl2bA9wKYN+0bn/gxXucVIfqWhRWj6DGQNe8bKa6PZTmnp4dnLcEexZj+vCNpv5Mik
 qW6+depHKMDFG+IdlA8YM+j91m9qzRnTpyRTPou06qpgbksYCW1woh2Ep9rHkysui0C5
 Ab8Rhttu93AL1FGWy3ogJLMCfQGlJtGFGnk64n+dxJxLmD+rt/e7fO0PT9zrBvJ1g/sP
 V9xm9mSV7ReH56areihX39je4EEg6JCBpYMl9fPhNJxof9v4P1KHQ7XkX73Ez/CgOfbQ
 laLxrY/E1phzk3ax+jBlgdONICcQ+zebICuFykLGfkjI82EqPjNssn4ja+onclV3DRQs
 q7wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:content-transfer-encoding:from:mime-version
 :subject:date:message-id:references:cc:in-reply-to:to;
 bh=J98m9KYkEOwzBwR4gJbGf5LmFEZVdcyB2+O4ycMEqDk=;
 b=ZhyyoKtEhsjqgbSHL6WHDFF1jLcdWZzEnDe+0apIKYKSV/lbQeXPC6aCJj24iSx3YV
 9mRf/qGIpeCkXv2+PoB4cjLv5xpiGP/Jmy9MtdW+EdzWr9lhtXN3suKkSrOdZwG/j3OR
 Oc2A7IxJrgGubgf4+saMU+ljpYP3la3uB8PxOdGsgvYXxi7b1UgiaP6EedlFPjn4moLM
 ueZWvvsgJIRYfCd8Ma96bJxVtG3xONueHS/uf1NW1XLqkOnAGwbGqDQ96n0o6fsXbpvt
 56UkazlTHwa1+9V5xFm1zY75nRQJ96hLcJcxLfVPWfb1HZNgXvTW3VxLridPsv/quAhN
 NIDw==
X-Gm-Message-State: APjAAAXBVaSDtXZ+6d5ywH84hwScBCfbVSEwQz2yfcEelShNPL5LjNTe
 bPEX164ipD4RG2neFKLme0Q=
X-Google-Smtp-Source: APXvYqykNtsQ4s6OzEBSpTyodjbli7X7YH8mDUWyGmMaoaxgwNi2OyREO/s0eQLDryv4eNVg6wCX6A==
X-Received: by 2002:ac8:4a86:: with SMTP id l6mr4988851qtq.371.1571770623366; 
 Tue, 22 Oct 2019 11:57:03 -0700 (PDT)
Received: from [192.168.2.29] (smflon1825w-lp140-01-174-95-15-137.dsl.bell.ca.
 [174.95.15.137])
 by smtp.gmail.com with ESMTPSA id f37sm9207825qtb.65.2019.10.22.11.57.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Oct 2019 11:57:02 -0700 (PDT)
Mime-Version: 1.0 (1.0)
Date: Tue, 22 Oct 2019 14:57:02 -0400
Message-Id: <E9D1A1CB-23B9-4AA5-87F4-953A327D68CD@gmail.com>
References: <CAMMoi3vGDD-A72_zZTCcSU-G-Rt6Ab354RZHSAtDLU0Cv1e76Q@mail.gmail.com>
In-Reply-To: <CAMMoi3vGDD-A72_zZTCcSU-G-Rt6Ab354RZHSAtDLU0Cv1e76Q@mail.gmail.com>
To: Richard Bell <richard.bell4@gmail.com>
X-Mailer: iPhone Mail (17A878)
Subject: Re: [USRP-users] Multi-USRP with X300's
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
From: Marcus D Leech via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Marcus D Leech <patchvonbraun@gmail.com>
Cc: "usrp-users@lists.ettus.com" <USRP-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6673709536975776429=="
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


--===============6673709536975776429==
Content-Type: multipart/alternative; boundary=Apple-Mail-F863B4D5-5DD0-42DC-B5E2-BFD8BAB37078
Content-Transfer-Encoding: 7bit


--Apple-Mail-F863B4D5-5DD0-42DC-B5E2-BFD8BAB37078
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Well, for devices like TwinRX there are two subdevs per slot.=20



Sent from my iPhone

> On Oct 22, 2019, at 2:51 PM, Richard Bell <richard.bell4@gmail.com> wrote:=

>=20
> =EF=BB=BF
> I think I sort of figured it out, though the motherboard, subdevice and ch=
annel terminology is still confusing.
>=20
> 1) Each USRP X300 has 1 motherboard
> 2) Each motherboard has two subdevice slots, A and B
> 3) Each subdevice slot has 1 channel
>=20
> If I want to use both subdevices on USRP1 and only one subdevice on USRP2 t=
hen the following settings would make that work:
>=20
> Device Arguments :=3D "addr0=3D192.168.10.2,addr1=3D192.168.11.2"
> Mb0: Subdev Spec :=3D A:0 B:0
> MB1: Subdev Spec :=3D A:0
> Num Channels :=3D 3
>=20
> To use only 1 subdevice on each USRP this would work:
>=20
> Device Arguments :=3D "addr0=3D192.168.10.2,addr1=3D192.168.11.2"
> Mb0: Subdev Spec :=3D A:0
> MB1: Subdev Spec :=3D A:0
> Num Channels :=3D 2
>=20
> To use all 4 subdevices at the same time:
> Device Arguments :=3D "addr0=3D192.168.10.2,addr1=3D192.168.11.2"
> Mb0: Subdev Spec :=3D A:0 B:0
> MB1: Subdev Spec :=3D A:0 B:0
> Num Channels :=3D 4
>=20
> Will there every be a situation where I would do something like A:1 instea=
d of A:0 in the subdevice specs?
>=20
>> On Tue, Oct 22, 2019 at 11:25 AM Marcus D Leech <patchvonbraun@gmail.com>=
 wrote:
>> Could you share your flow graph with us?
>>=20
>> What daughtercards do you have installed?
>>=20
>> Sent from my iPhone
>>=20
>> > On Oct 22, 2019, at 2:16 PM, Richard Bell via USRP-users <usrp-users@li=
sts.ettus.com> wrote:
>> >=20
>> > =EF=BB=BF
>> > Hello,
>> >=20
>> > I'm a little confused about how I should distinguish between two differ=
ent USRPs X300's and the two different motherboards per USRP X300 in this ty=
pe of setup. I am feeding a 10 MHz ref and PPS ref to both USRPs. What I hav=
e right now is a gr flowgraph with a single USRP Sink block that I have conf=
igured with the following device address
>> >=20
>> > "addr0=3D192.168.10.2,addr1=3D192.168.11.2"
>> >=20
>> > and I have selected
>> >=20
>> > Num Mboards =3D 2
>> > Num Channels =3D 2
>> >=20
>> > But this setup only uses the addr0=3D192.168.10.2 USRP to receive on bo=
th RFA and RFB ports. I would like to configure receiving on 192.168.10.2 RFA=
 TX/RX and 192.168.11.2 RFA TX/RX.
>> >=20
>> > How do I configure this properly?
>> > _______________________________________________
>> > USRP-users mailing list
>> > USRP-users@lists.ettus.com
>> > http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--Apple-Mail-F863B4D5-5DD0-42DC-B5E2-BFD8BAB37078
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Well, for devices like TwinRX there are two=
 subdevs per slot.&nbsp;<div><br></div><div><br><br><div dir=3D"ltr">Sent fr=
om my iPhone</div><div dir=3D"ltr"><br><blockquote type=3D"cite">On Oct 22, 2=
019, at 2:51 PM, Richard Bell &lt;richard.bell4@gmail.com&gt; wrote:<br><br>=
</blockquote></div><blockquote type=3D"cite"><div dir=3D"ltr">=EF=BB=BF<div d=
ir=3D"ltr"><div>I think I sort of figured it out, though the motherboard, su=
bdevice and channel terminology is still confusing.<br></div><div><br></div>=
<div>1) Each USRP X300 has 1 motherboard</div><div>2) Each motherboard has t=
wo subdevice slots, A and B</div><div>3) Each subdevice slot has 1 channel</=
div><div><br></div><div>If I want to use both subdevices on USRP1 and only o=
ne subdevice on USRP2 then the following settings would make that work:</div=
><div><br></div><div>Device Arguments :=3D "addr0=3D192.168.10.2,addr1=3D192=
.168.11.2"</div><div>Mb0: Subdev Spec :=3D A:0 B:0</div><div>MB1: Subdev Spe=
c :=3D A:0</div><div>Num Channels :=3D 3</div><div><br></div><div>To use onl=
y 1 subdevice on each USRP this would work:<br></div><div><br></div><div><di=
v>Device Arguments :=3D "addr0=3D192.168.10.2,addr1=3D192.168.11.2"</div><di=
v>Mb0: Subdev Spec :=3D A:0</div><div>MB1: Subdev Spec :=3D A:0</div><div>Nu=
m Channels :=3D 2</div><div><br></div><div>To use all 4 subdevices at the sa=
me time:</div><div><div>Device Arguments :=3D "addr0=3D192.168.10.2,addr1=3D=
192.168.11.2"</div><div>Mb0: Subdev Spec :=3D A:0 B:0<br></div><div>MB1: Sub=
dev Spec :=3D A:0 B:0<br></div><div>Num Channels :=3D 4</div><div><br></div>=
<div>Will there every be a situation where I would do something like A:1 ins=
tead of A:0 in the subdevice specs?<br></div></div></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Oct 22, 2019=
 at 11:25 AM Marcus D Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">p=
atchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">Could you share your flow graph with us?<br>
<br>
What daughtercards do you have installed?<br>
<br>
Sent from my iPhone<br>
<br>
&gt; On Oct 22, 2019, at 2:16 PM, Richard Bell via USRP-users &lt;<a href=3D=
"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus=
.com</a>&gt; wrote:<br>
&gt; <br>
&gt; =EF=BB=BF<br>
&gt; Hello,<br>
&gt; <br>
&gt; I'm a little confused about how I should distinguish between two differ=
ent USRPs X300's and the two different motherboards per USRP X300 in this ty=
pe of setup. I am feeding a 10 MHz ref and PPS ref to both USRPs. What I hav=
e right now is a gr flowgraph with a single USRP Sink block that I have conf=
igured with the following device address<br>
&gt; <br>
&gt; "addr0=3D192.168.10.2,addr1=3D192.168.11.2"<br>
&gt; <br>
&gt; and I have selected<br>
&gt; <br>
&gt; Num Mboards =3D 2<br>
&gt; Num Channels =3D 2<br>
&gt; <br>
&gt; But this setup only uses the addr0=3D192.168.10.2 USRP to receive on bo=
th RFA and RFB ports. I would like to configure receiving on 192.168.10.2 RFA=
 TX/RX and 192.168.11.2 RFA TX/RX.<br>
&gt; <br>
&gt; How do I configure this properly?<br>
&gt; _______________________________________________<br>
&gt; USRP-users mailing list<br>
&gt; <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-us=
ers@lists.ettus.com</a><br>
&gt; <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ett=
us.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/=
listinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>
</div></blockquote></div></body></html>=

--Apple-Mail-F863B4D5-5DD0-42DC-B5E2-BFD8BAB37078--


--===============6673709536975776429==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6673709536975776429==--


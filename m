Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B5D21E118
	for <lists+usrp-users@lfdr.de>; Mon, 13 Jul 2020 22:02:34 +0200 (CEST)
Received: from [::1] (port=40910 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jv4eg-0007eO-L1; Mon, 13 Jul 2020 16:02:26 -0400
Received: from mail-ua1-f53.google.com ([209.85.222.53]:38628)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <jonathon.pendlum@ettus.com>)
 id 1jv4ec-0007a1-P9
 for usrp-users@lists.ettus.com; Mon, 13 Jul 2020 16:02:22 -0400
Received: by mail-ua1-f53.google.com with SMTP id n4so4566870uae.5
 for <usrp-users@lists.ettus.com>; Mon, 13 Jul 2020 13:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ettus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/6e4Gk4kbYyvK9rMDWrXYVpcLFMr0Xu1X3tf8j2gGwE=;
 b=a8EF3dVP4r2U2LKVWzmGFQYORB01XwctKaueGgkNF2p/Fx7y49NB6V58qASrMYs9rD
 e4ZdTDE88t+gtcMNRekLF8xwO9SUm6Vhj5FVhHRKFm1JN2kfUBnfgaOYYrhvbiIkD0Sk
 6Rl7GM5y2IHzwW7tnJN/PjUlEiZDxcDe/SmXJEfNtP4VAtpYPBXgRxSjfo4Ek5F6S/1h
 f01O2+CYQQV0kAgK76K8VJQ/eupyxc7nvhGU8RyFnNNUpOJU8p0YKqQ9w90EAID2MSY4
 Jy1MapsQZaQGSpXtt4nwClJFNm7aDf1p3DKuTjpRdc+pChoRcCamwYyAIcqHfdSIOkHn
 SOmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/6e4Gk4kbYyvK9rMDWrXYVpcLFMr0Xu1X3tf8j2gGwE=;
 b=abGAmWu7zBOnkLSa484j7gsDxQM7UivO5N0WRQPWlwFwYhNYTyboQSTrUZMsTrN+uz
 Nr2pDd0DiYm2KKRwpzVozeoDtOQI7Z6dIZqnmhHWmr/xwB18kkO7FaKi8nW9O6ZjJdF6
 cT+gGFhQwN+jxa+lejtX+Oqe9dDy8KfpmqBRknMrL+YFRwBkJvp1He4Z2po5Vnoqk4hQ
 NPJgqLnAtZqP2gSj5oIzxz//E5mVWWxjiBQZ118Q/i2xXRNitxPyYFzeztogeZ4njUDy
 ksG6iWFlDTQpT7jVya6FkSX2jPC8jX/d2Qyl7D9qgaWCZoQipLbmsF7kzDyVz4B+yq2L
 wi1Q==
X-Gm-Message-State: AOAM5335rGMsrANxawIL3PaKYhJ/OzpCrkKKBFHh7D+tbVrfp1vQoiPk
 WUFecRc7+vVf1dM1cl3gtWhZisuBORbIMnVFb26aDc01PwxECXei
X-Google-Smtp-Source: ABdhPJy2nSHkGAIsKUv29erN7QBGNeT9xRZyFeG+R8vMv7T8GDLODerMAWzuKfQJyfMUVNZxRtJuTv5hiUN7tAAz6SQ=
X-Received: by 2002:ab0:3b2:: with SMTP id 47mr983555uau.139.1594670501872;
 Mon, 13 Jul 2020 13:01:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAP2eGPhL=8q8gKaVrMtD0e856Jrdr=XrK74DkAvF+9_So9uOcQ@mail.gmail.com>
 <CAP2eGPjErjToX9q7-AtvHBBm5mg5kebzv-t3VrVxOtk7Vn=5zg@mail.gmail.com>
In-Reply-To: <CAP2eGPjErjToX9q7-AtvHBBm5mg5kebzv-t3VrVxOtk7Vn=5zg@mail.gmail.com>
Date: Mon, 13 Jul 2020 16:01:06 -0400
Message-ID: <CAL7q81uTau5eRb-pEbVqU_+68gtmB_+NFiPHhPg8Pzb6CKXs4Q@mail.gmail.com>
To: Carlos Alberto Ruiz Naranjo <carlosruiznaranjo@gmail.com>
Cc: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Subject: Re: [USRP-users] Sync problem in custom DUC
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.33
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Jonathon Pendlum via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Jonathon Pendlum <jonathon.pendlum@ettus.com>
Content-Type: multipart/mixed; boundary="===============6087408624760213536=="
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

--===============6087408624760213536==
Content-Type: multipart/alternative; boundary="000000000000cc5a0605aa582800"

--000000000000cc5a0605aa582800
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Carlos,

Where are the sine waves coming from / how are they generated? What is
your entire flowgraph? What sampling rate are you running at?

Jonathon

On Fri, Jul 10, 2020 at 2:45 PM Carlos Alberto Ruiz Naranjo via USRP-users =
<
usrp-users@lists.ettus.com> wrote:

> This is the code for the adder (between dds_timed and axi_wrapper):
>
> assign s_axis_data_tvalid2[0] =3D s_axis_data_tvalid[1] &
> s_axis_data_tvalid[0];
> assign s_axis_data_tvalid2[1] =3D s_axis_data_tvalid[1] &
> s_axis_data_tvalid[0];
>
> assign s_axis_data_tuser2 =3D s_axis_data_tuser;
>
> assign s_axis_data_tlast2[0] =3D s_axis_data_tlast[0];
> assign s_axis_data_tlast2[1] =3D s_axis_data_tlast[1];
>
> assign s_axis_data_tdata2[15: 0] =3D s_axis_data_tdata[47:32] +
> s_axis_data_tdata[15: 0];
> assign s_axis_data_tdata2[31:16] =3D s_axis_data_tdata[63:48] +
> s_axis_data_tdata[31:16];
>
> assign s_axis_data_tready_aux =3D ~|(~{s_axis_data_tready_out[0
> ],s_axis_data_tready_out[1]} & 2'b11);
> assign s_axis_data_tready[0] =3D s_axis_data_tvalid[0] & s_axis_data_tval=
id[
> 1] & s_axis_data_tready_aux;
> assign s_axis_data_tready[1] =3D s_axis_data_tvalid[0] & s_axis_data_tval=
id[
> 1] & s_axis_data_tready_aux;
>
> El vie., 10 jul. 2020 a las 11:59, Carlos Alberto Ruiz Naranjo (<
> carlosruiznaranjo@gmail.com>) escribi=C3=B3:
>
>> Hi,
>>
>> I'm customizing the DUC block to do it 2input:1output
>>
>> input 0  ---> DUC --->
>>                                       add ---> output
>> input 1  ---> DUC --->
>>
>> I have added an addsub module between dds_timed and axi_wrapper.
>> Apparently it works fine. I can see two tones in the output if the input=
s
>> are 2 tones.
>>
>> But I have a synchronization problem. If input_0 is a sine and input_1 i=
s
>> a sine with pi phase the output should be 0. And the output is 0, but af=
ter
>> a while (3 minutes) no. I think that the channels are out of sync before
>> the adder.
>>
>> Any idea about what is happening?
>>
>> Thank you :)
>>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000cc5a0605aa582800
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Carlos,<div><br></div><div>Where are the sine waves com=
ing from / how are they generated? What is your=C2=A0entire flowgraph? What=
 sampling rate are you running at?</div><div><br></div><div>Jonathon</div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Fri, Jul 10, 2020 at 2:45 PM Carlos Alberto Ruiz Naranjo via USRP-users &=
lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.ettus.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr"><div>This is the code for the adder (between dds_timed and=
 axi_wrapper):</div><div><br></div><div><div style=3D"color:rgb(225,228,232=
);background-color:rgb(36,41,46);font-family:&quot;Droid Sans Mono&quot;,mo=
nospace,monospace,&quot;Droid Sans Fallback&quot;;font-weight:normal;font-s=
ize:14px;line-height:19px;white-space:pre-wrap"><div><span style=3D"color:r=
gb(225,228,232)">  </span><span style=3D"color:rgb(249,117,131)">assign</sp=
an><span style=3D"color:rgb(225,228,232)"> s_axis_data_tvalid2[</span><span=
 style=3D"color:rgb(121,184,255)">0</span><span style=3D"color:rgb(225,228,=
232)">] </span><span style=3D"color:rgb(249,117,131)">=3D</span><span style=
=3D"color:rgb(225,228,232)"> s_axis_data_tvalid[</span><span style=3D"color=
:rgb(121,184,255)">1</span><span style=3D"color:rgb(225,228,232)">] </span>=
<span style=3D"color:rgb(249,117,131)">&amp;</span><span style=3D"color:rgb=
(225,228,232)"> s_axis_data_tvalid[</span><span style=3D"color:rgb(121,184,=
255)">0</span><span style=3D"color:rgb(225,228,232)">];</span></div><div><s=
pan style=3D"color:rgb(225,228,232)">  </span><span style=3D"color:rgb(249,=
117,131)">assign</span><span style=3D"color:rgb(225,228,232)"> s_axis_data_=
tvalid2[</span><span style=3D"color:rgb(121,184,255)">1</span><span style=
=3D"color:rgb(225,228,232)">] </span><span style=3D"color:rgb(249,117,131)"=
>=3D</span><span style=3D"color:rgb(225,228,232)"> s_axis_data_tvalid[</spa=
n><span style=3D"color:rgb(121,184,255)">1</span><span style=3D"color:rgb(2=
25,228,232)">] </span><span style=3D"color:rgb(249,117,131)">&amp;</span><s=
pan style=3D"color:rgb(225,228,232)"> s_axis_data_tvalid[</span><span style=
=3D"color:rgb(121,184,255)">0</span><span style=3D"color:rgb(225,228,232)">=
];</span></div><br><div><span style=3D"color:rgb(225,228,232)">  </span><sp=
an style=3D"color:rgb(249,117,131)">assign</span><span style=3D"color:rgb(2=
25,228,232)"> s_axis_data_tuser2 </span><span style=3D"color:rgb(249,117,13=
1)">=3D</span><span style=3D"color:rgb(225,228,232)"> s_axis_data_tuser;</s=
pan></div><br><div><span style=3D"color:rgb(225,228,232)">  </span><span st=
yle=3D"color:rgb(249,117,131)">assign</span><span style=3D"color:rgb(225,22=
8,232)"> s_axis_data_tlast2[</span><span style=3D"color:rgb(121,184,255)">0=
</span><span style=3D"color:rgb(225,228,232)">] </span><span style=3D"color=
:rgb(249,117,131)">=3D</span><span style=3D"color:rgb(225,228,232)"> s_axis=
_data_tlast[</span><span style=3D"color:rgb(121,184,255)">0</span><span sty=
le=3D"color:rgb(225,228,232)">];</span></div><div><span style=3D"color:rgb(=
225,228,232)">  </span><span style=3D"color:rgb(249,117,131)">assign</span>=
<span style=3D"color:rgb(225,228,232)"> s_axis_data_tlast2[</span><span sty=
le=3D"color:rgb(121,184,255)">1</span><span style=3D"color:rgb(225,228,232)=
">] </span><span style=3D"color:rgb(249,117,131)">=3D</span><span style=3D"=
color:rgb(225,228,232)"> s_axis_data_tlast[</span><span style=3D"color:rgb(=
121,184,255)">1</span><span style=3D"color:rgb(225,228,232)">];</span></div=
><br><div><span style=3D"color:rgb(225,228,232)">  </span><span style=3D"co=
lor:rgb(249,117,131)">assign</span><span style=3D"color:rgb(225,228,232)"> =
s_axis_data_tdata2[</span><span style=3D"color:rgb(121,184,255)">15</span><=
span style=3D"color:rgb(225,228,232)">: </span><span style=3D"color:rgb(121=
,184,255)">0</span><span style=3D"color:rgb(225,228,232)">] </span><span st=
yle=3D"color:rgb(249,117,131)">=3D</span><span style=3D"color:rgb(225,228,2=
32)"> s_axis_data_tdata[</span><span style=3D"color:rgb(121,184,255)">47</s=
pan><span style=3D"color:rgb(225,228,232)">:</span><span style=3D"color:rgb=
(121,184,255)">32</span><span style=3D"color:rgb(225,228,232)">] </span><sp=
an style=3D"color:rgb(249,117,131)">+</span><span style=3D"color:rgb(225,22=
8,232)"> s_axis_data_tdata[</span><span style=3D"color:rgb(121,184,255)">15=
</span><span style=3D"color:rgb(225,228,232)">: </span><span style=3D"color=
:rgb(121,184,255)">0</span><span style=3D"color:rgb(225,228,232)">];</span>=
</div><div><span style=3D"color:rgb(225,228,232)">  </span><span style=3D"c=
olor:rgb(249,117,131)">assign</span><span style=3D"color:rgb(225,228,232)">=
 s_axis_data_tdata2[</span><span style=3D"color:rgb(121,184,255)">31</span>=
<span style=3D"color:rgb(225,228,232)">:</span><span style=3D"color:rgb(121=
,184,255)">16</span><span style=3D"color:rgb(225,228,232)">] </span><span s=
tyle=3D"color:rgb(249,117,131)">=3D</span><span style=3D"color:rgb(225,228,=
232)"> s_axis_data_tdata[</span><span style=3D"color:rgb(121,184,255)">63</=
span><span style=3D"color:rgb(225,228,232)">:</span><span style=3D"color:rg=
b(121,184,255)">48</span><span style=3D"color:rgb(225,228,232)">] </span><s=
pan style=3D"color:rgb(249,117,131)">+</span><span style=3D"color:rgb(225,2=
28,232)"> s_axis_data_tdata[</span><span style=3D"color:rgb(121,184,255)">3=
1</span><span style=3D"color:rgb(225,228,232)">:</span><span style=3D"color=
:rgb(121,184,255)">16</span><span style=3D"color:rgb(225,228,232)">];</span=
></div><br><div><span style=3D"color:rgb(225,228,232)">  </span><span style=
=3D"color:rgb(249,117,131)">assign</span><span style=3D"color:rgb(225,228,2=
32)"> s_axis_data_tready_aux </span><span style=3D"color:rgb(249,117,131)">=
=3D</span><span style=3D"color:rgb(225,228,232)"> </span><span style=3D"col=
or:rgb(249,117,131)">~|</span><span style=3D"color:rgb(225,228,232)">(</spa=
n><span style=3D"color:rgb(249,117,131)">~</span><span style=3D"color:rgb(2=
25,228,232)">{s_axis_data_tready_out[</span><span style=3D"color:rgb(121,18=
4,255)">0</span><span style=3D"color:rgb(225,228,232)">],s_axis_data_tready=
_out[</span><span style=3D"color:rgb(121,184,255)">1</span><span style=3D"c=
olor:rgb(225,228,232)">]} </span><span style=3D"color:rgb(249,117,131)">&am=
p;</span><span style=3D"color:rgb(225,228,232)"> </span><span style=3D"colo=
r:rgb(121,184,255)">2&#39;b11</span><span style=3D"color:rgb(225,228,232)">=
);</span></div><div><span style=3D"color:rgb(225,228,232)">  </span><span s=
tyle=3D"color:rgb(249,117,131)">assign</span><span style=3D"color:rgb(225,2=
28,232)"> s_axis_data_tready[</span><span style=3D"color:rgb(121,184,255)">=
0</span><span style=3D"color:rgb(225,228,232)">] </span><span style=3D"colo=
r:rgb(249,117,131)">=3D</span><span style=3D"color:rgb(225,228,232)"> s_axi=
s_data_tvalid[</span><span style=3D"color:rgb(121,184,255)">0</span><span s=
tyle=3D"color:rgb(225,228,232)">] </span><span style=3D"color:rgb(249,117,1=
31)">&amp;</span><span style=3D"color:rgb(225,228,232)"> s_axis_data_tvalid=
[</span><span style=3D"color:rgb(121,184,255)">1</span><span style=3D"color=
:rgb(225,228,232)">] </span><span style=3D"color:rgb(249,117,131)">&amp;</s=
pan><span style=3D"color:rgb(225,228,232)"> s_axis_data_tready_aux;</span><=
/div><div><span style=3D"color:rgb(225,228,232)">  </span><span style=3D"co=
lor:rgb(249,117,131)">assign</span><span style=3D"color:rgb(225,228,232)"> =
s_axis_data_tready[</span><span style=3D"color:rgb(121,184,255)">1</span><s=
pan style=3D"color:rgb(225,228,232)">] </span><span style=3D"color:rgb(249,=
117,131)">=3D</span><span style=3D"color:rgb(225,228,232)"> s_axis_data_tva=
lid[</span><span style=3D"color:rgb(121,184,255)">0</span><span style=3D"co=
lor:rgb(225,228,232)">] </span><span style=3D"color:rgb(249,117,131)">&amp;=
</span><span style=3D"color:rgb(225,228,232)"> s_axis_data_tvalid[</span><s=
pan style=3D"color:rgb(121,184,255)">1</span><span style=3D"color:rgb(225,2=
28,232)">] </span><span style=3D"color:rgb(249,117,131)">&amp;</span><span =
style=3D"color:rgb(225,228,232)"> s_axis_data_tready_aux;</span></div></div=
> </div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">El vie., 10 jul. 2020 a las 11:59, Carlos Alberto Ruiz Naranjo (&lt=
;<a href=3D"mailto:carlosruiznaranjo@gmail.com" target=3D"_blank">carlosrui=
znaranjo@gmail.com</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr">Hi,<br><br>I&#39;m customizing =
the DUC block to do it 2input:1output<br><br>input 0 =C2=A0---&gt; DUC ---&=
gt;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 add ---&gt; output<br>input 1 =C2=A0---&gt; DUC=
 ---&gt;<br><br>I have added an addsub module between dds_timed and axi_wra=
pper. Apparently it works fine. I can see two tones in the output if the in=
puts are 2 tones. <br><br>But I have a synchronization problem. If input_0 =
is a sine and input_1 is a sine with pi phase the output should be 0. And t=
he output is 0, but after a while (3 minutes) no. I think that the channels=
 are out of sync before the adder.<br><br>Any idea about what is happening?=
<br><br>Thank you :)<br></div>
</blockquote></div>
_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000cc5a0605aa582800--


--===============6087408624760213536==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6087408624760213536==--


Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D9BD121BD29
	for <lists+usrp-users@lfdr.de>; Fri, 10 Jul 2020 20:45:39 +0200 (CEST)
Received: from [::1] (port=38712 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.93)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1jty1c-0004s4-TK; Fri, 10 Jul 2020 14:45:32 -0400
Received: from mail-io1-f54.google.com ([209.85.166.54]:38118)
 by mm2.emwd.com with esmtps (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
 (Exim 4.93) (envelope-from <carlosruiznaranjo@gmail.com>)
 id 1jty1Y-0004jv-Pr
 for usrp-users@lists.ettus.com; Fri, 10 Jul 2020 14:45:28 -0400
Received: by mail-io1-f54.google.com with SMTP id l1so7079606ioh.5
 for <usrp-users@lists.ettus.com>; Fri, 10 Jul 2020 11:45:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
 bh=dZXEM0TU1FfFgs6Tdp49BAe3+c4xOdpsFmTRTu1kG7E=;
 b=nj2L+soucTGd77oEwFKm7skJtNTrQ88w0Sq9lLFoQQWPHUIun78ht2EIFXYsW/LfGz
 XW2fztyT6hQmTTBnYAnutgk/C/d0BzDORBKITJgZlCpJE9GhDpDzGo3haWFJcSGfFgKP
 IweGO0YNJhfsMzXZx54t/zclqnEIO9IlOIuQZeofWyeDYfIy6w1BWYBJkMun0KXtdf2x
 ltDCR7oboJUxVw9LkbaC5+nQiaIlym2ciGQh0FWrh5rnTu2bpJPyVlDAYdWiqHwygs03
 FL3IS1BJ2jsP67fG19a137dbhJJlHVzXIOOhFIQpcaUe/e8vFnSzTo/u7nwcjLw5y0A/
 ZHvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to;
 bh=dZXEM0TU1FfFgs6Tdp49BAe3+c4xOdpsFmTRTu1kG7E=;
 b=VNMG+SjyAOJPwCnfCKFga8/C4jjaQyotelCjLVUKlojlXMy1lgJeJt2AUna/murhVT
 1th75KR/Q0Buo5OLRMdSUqoMQ3w2RoIDtL46teBfxslBI1nAkLxDDAPVFU5KyQLIF1Tx
 QItvo47angMnmVRAri+kNmTJIpw2bQQzXCvc8/CSATwojM+N7gpAuMEFSJT2ppml4RyK
 TOEU4cirGQfsc50iTtylbkHnT1gp0Lc+K1mbGkIoATKMkHxFC9CPgJJodS0Ynp7S/Y8j
 5n7shIx/g19JNZ4kDO1Q66n/3UhQ/3iheiiE5MjRdIrbqguWffwQOSbyx9zKKPHux8ty
 WjJg==
X-Gm-Message-State: AOAM533SWsXxYhPpjXU1cYwWYAjvC5dXnTzerlA5qxseg6ZEgE7qhtzx
 wInKTTr7bCHdZUKCKt+77EGB1Bsz2Y9d5mOCHEALv5CuOYU=
X-Google-Smtp-Source: ABdhPJzKXog8SlxlK0/GS5Ah4UBF8AYq41sR9rebt001EwhYXBLTpcFpi5GaBcL+E83yQ2oH7U4FswABpOYQpkzkU7U=
X-Received: by 2002:a5e:8b44:: with SMTP id z4mr27019673iom.123.1594406687621; 
 Fri, 10 Jul 2020 11:44:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAP2eGPhL=8q8gKaVrMtD0e856Jrdr=XrK74DkAvF+9_So9uOcQ@mail.gmail.com>
In-Reply-To: <CAP2eGPhL=8q8gKaVrMtD0e856Jrdr=XrK74DkAvF+9_So9uOcQ@mail.gmail.com>
Date: Fri, 10 Jul 2020 20:44:36 +0200
Message-ID: <CAP2eGPjErjToX9q7-AtvHBBm5mg5kebzv-t3VrVxOtk7Vn=5zg@mail.gmail.com>
To: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
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
From: Carlos Alberto Ruiz Naranjo via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Carlos Alberto Ruiz Naranjo <carlosruiznaranjo@gmail.com>
Content-Type: multipart/mixed; boundary="===============0358544869246040729=="
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

--===============0358544869246040729==
Content-Type: multipart/alternative; boundary="0000000000003e46d205aa1abcf0"

--0000000000003e46d205aa1abcf0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This is the code for the adder (between dds_timed and axi_wrapper):

assign s_axis_data_tvalid2[0] =3D s_axis_data_tvalid[1] & s_axis_data_tvali=
d[0
];
assign s_axis_data_tvalid2[1] =3D s_axis_data_tvalid[1] & s_axis_data_tvali=
d[0
];

assign s_axis_data_tuser2 =3D s_axis_data_tuser;

assign s_axis_data_tlast2[0] =3D s_axis_data_tlast[0];
assign s_axis_data_tlast2[1] =3D s_axis_data_tlast[1];

assign s_axis_data_tdata2[15: 0] =3D s_axis_data_tdata[47:32] +
s_axis_data_tdata[15: 0];
assign s_axis_data_tdata2[31:16] =3D s_axis_data_tdata[63:48] +
s_axis_data_tdata[31:16];

assign s_axis_data_tready_aux =3D ~|(~{s_axis_data_tready_out[0
],s_axis_data_tready_out[1]} & 2'b11);
assign s_axis_data_tready[0] =3D s_axis_data_tvalid[0] & s_axis_data_tvalid=
[1]
& s_axis_data_tready_aux;
assign s_axis_data_tready[1] =3D s_axis_data_tvalid[0] & s_axis_data_tvalid=
[1]
& s_axis_data_tready_aux;

El vie., 10 jul. 2020 a las 11:59, Carlos Alberto Ruiz Naranjo (<
carlosruiznaranjo@gmail.com>) escribi=C3=B3:

> Hi,
>
> I'm customizing the DUC block to do it 2input:1output
>
> input 0  ---> DUC --->
>                                       add ---> output
> input 1  ---> DUC --->
>
> I have added an addsub module between dds_timed and axi_wrapper.
> Apparently it works fine. I can see two tones in the output if the inputs
> are 2 tones.
>
> But I have a synchronization problem. If input_0 is a sine and input_1 is
> a sine with pi phase the output should be 0. And the output is 0, but aft=
er
> a while (3 minutes) no. I think that the channels are out of sync before
> the adder.
>
> Any idea about what is happening?
>
> Thank you :)
>

--0000000000003e46d205aa1abcf0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This is the code for the adder (between dds_timed and=
 axi_wrapper):</div><div><br></div><div><div style=3D"color:rgb(225,228,232=
);background-color:rgb(36,41,46);font-family:&quot;Droid Sans Mono&quot;,&q=
uot;monospace&quot;,monospace,&quot;Droid Sans Fallback&quot;;font-weight:n=
ormal;font-size:14px;line-height:19px;white-space:pre"><div><span style=3D"=
color:rgb(225,228,232)">  </span><span style=3D"color:rgb(249,117,131)">ass=
ign</span><span style=3D"color:rgb(225,228,232)"> s_axis_data_tvalid2[</spa=
n><span style=3D"color:rgb(121,184,255)">0</span><span style=3D"color:rgb(2=
25,228,232)">] </span><span style=3D"color:rgb(249,117,131)">=3D</span><spa=
n style=3D"color:rgb(225,228,232)"> s_axis_data_tvalid[</span><span style=
=3D"color:rgb(121,184,255)">1</span><span style=3D"color:rgb(225,228,232)">=
] </span><span style=3D"color:rgb(249,117,131)">&amp;</span><span style=3D"=
color:rgb(225,228,232)"> s_axis_data_tvalid[</span><span style=3D"color:rgb=
(121,184,255)">0</span><span style=3D"color:rgb(225,228,232)">];</span></di=
v><div><span style=3D"color:rgb(225,228,232)">  </span><span style=3D"color=
:rgb(249,117,131)">assign</span><span style=3D"color:rgb(225,228,232)"> s_a=
xis_data_tvalid2[</span><span style=3D"color:rgb(121,184,255)">1</span><spa=
n style=3D"color:rgb(225,228,232)">] </span><span style=3D"color:rgb(249,11=
7,131)">=3D</span><span style=3D"color:rgb(225,228,232)"> s_axis_data_tvali=
d[</span><span style=3D"color:rgb(121,184,255)">1</span><span style=3D"colo=
r:rgb(225,228,232)">] </span><span style=3D"color:rgb(249,117,131)">&amp;</=
span><span style=3D"color:rgb(225,228,232)"> s_axis_data_tvalid[</span><spa=
n style=3D"color:rgb(121,184,255)">0</span><span style=3D"color:rgb(225,228=
,232)">];</span></div><br><div><span style=3D"color:rgb(225,228,232)">  </s=
pan><span style=3D"color:rgb(249,117,131)">assign</span><span style=3D"colo=
r:rgb(225,228,232)"> s_axis_data_tuser2 </span><span style=3D"color:rgb(249=
,117,131)">=3D</span><span style=3D"color:rgb(225,228,232)"> s_axis_data_tu=
ser;</span></div><br><div><span style=3D"color:rgb(225,228,232)">  </span><=
span style=3D"color:rgb(249,117,131)">assign</span><span style=3D"color:rgb=
(225,228,232)"> s_axis_data_tlast2[</span><span style=3D"color:rgb(121,184,=
255)">0</span><span style=3D"color:rgb(225,228,232)">] </span><span style=
=3D"color:rgb(249,117,131)">=3D</span><span style=3D"color:rgb(225,228,232)=
"> s_axis_data_tlast[</span><span style=3D"color:rgb(121,184,255)">0</span>=
<span style=3D"color:rgb(225,228,232)">];</span></div><div><span style=3D"c=
olor:rgb(225,228,232)">  </span><span style=3D"color:rgb(249,117,131)">assi=
gn</span><span style=3D"color:rgb(225,228,232)"> s_axis_data_tlast2[</span>=
<span style=3D"color:rgb(121,184,255)">1</span><span style=3D"color:rgb(225=
,228,232)">] </span><span style=3D"color:rgb(249,117,131)">=3D</span><span =
style=3D"color:rgb(225,228,232)"> s_axis_data_tlast[</span><span style=3D"c=
olor:rgb(121,184,255)">1</span><span style=3D"color:rgb(225,228,232)">];</s=
pan></div><br><div><span style=3D"color:rgb(225,228,232)">  </span><span st=
yle=3D"color:rgb(249,117,131)">assign</span><span style=3D"color:rgb(225,22=
8,232)"> s_axis_data_tdata2[</span><span style=3D"color:rgb(121,184,255)">1=
5</span><span style=3D"color:rgb(225,228,232)">: </span><span style=3D"colo=
r:rgb(121,184,255)">0</span><span style=3D"color:rgb(225,228,232)">] </span=
><span style=3D"color:rgb(249,117,131)">=3D</span><span style=3D"color:rgb(=
225,228,232)"> s_axis_data_tdata[</span><span style=3D"color:rgb(121,184,25=
5)">47</span><span style=3D"color:rgb(225,228,232)">:</span><span style=3D"=
color:rgb(121,184,255)">32</span><span style=3D"color:rgb(225,228,232)">] <=
/span><span style=3D"color:rgb(249,117,131)">+</span><span style=3D"color:r=
gb(225,228,232)"> s_axis_data_tdata[</span><span style=3D"color:rgb(121,184=
,255)">15</span><span style=3D"color:rgb(225,228,232)">: </span><span style=
=3D"color:rgb(121,184,255)">0</span><span style=3D"color:rgb(225,228,232)">=
];</span></div><div><span style=3D"color:rgb(225,228,232)">  </span><span s=
tyle=3D"color:rgb(249,117,131)">assign</span><span style=3D"color:rgb(225,2=
28,232)"> s_axis_data_tdata2[</span><span style=3D"color:rgb(121,184,255)">=
31</span><span style=3D"color:rgb(225,228,232)">:</span><span style=3D"colo=
r:rgb(121,184,255)">16</span><span style=3D"color:rgb(225,228,232)">] </spa=
n><span style=3D"color:rgb(249,117,131)">=3D</span><span style=3D"color:rgb=
(225,228,232)"> s_axis_data_tdata[</span><span style=3D"color:rgb(121,184,2=
55)">63</span><span style=3D"color:rgb(225,228,232)">:</span><span style=3D=
"color:rgb(121,184,255)">48</span><span style=3D"color:rgb(225,228,232)">] =
</span><span style=3D"color:rgb(249,117,131)">+</span><span style=3D"color:=
rgb(225,228,232)"> s_axis_data_tdata[</span><span style=3D"color:rgb(121,18=
4,255)">31</span><span style=3D"color:rgb(225,228,232)">:</span><span style=
=3D"color:rgb(121,184,255)">16</span><span style=3D"color:rgb(225,228,232)"=
>];</span></div><br><div><span style=3D"color:rgb(225,228,232)">  </span><s=
pan style=3D"color:rgb(249,117,131)">assign</span><span style=3D"color:rgb(=
225,228,232)"> s_axis_data_tready_aux </span><span style=3D"color:rgb(249,1=
17,131)">=3D</span><span style=3D"color:rgb(225,228,232)"> </span><span sty=
le=3D"color:rgb(249,117,131)">~|</span><span style=3D"color:rgb(225,228,232=
)">(</span><span style=3D"color:rgb(249,117,131)">~</span><span style=3D"co=
lor:rgb(225,228,232)">{s_axis_data_tready_out[</span><span style=3D"color:r=
gb(121,184,255)">0</span><span style=3D"color:rgb(225,228,232)">],s_axis_da=
ta_tready_out[</span><span style=3D"color:rgb(121,184,255)">1</span><span s=
tyle=3D"color:rgb(225,228,232)">]} </span><span style=3D"color:rgb(249,117,=
131)">&amp;</span><span style=3D"color:rgb(225,228,232)"> </span><span styl=
e=3D"color:rgb(121,184,255)">2&#39;b11</span><span style=3D"color:rgb(225,2=
28,232)">);</span></div><div><span style=3D"color:rgb(225,228,232)">  </spa=
n><span style=3D"color:rgb(249,117,131)">assign</span><span style=3D"color:=
rgb(225,228,232)"> s_axis_data_tready[</span><span style=3D"color:rgb(121,1=
84,255)">0</span><span style=3D"color:rgb(225,228,232)">] </span><span styl=
e=3D"color:rgb(249,117,131)">=3D</span><span style=3D"color:rgb(225,228,232=
)"> s_axis_data_tvalid[</span><span style=3D"color:rgb(121,184,255)">0</spa=
n><span style=3D"color:rgb(225,228,232)">] </span><span style=3D"color:rgb(=
249,117,131)">&amp;</span><span style=3D"color:rgb(225,228,232)"> s_axis_da=
ta_tvalid[</span><span style=3D"color:rgb(121,184,255)">1</span><span style=
=3D"color:rgb(225,228,232)">] </span><span style=3D"color:rgb(249,117,131)"=
>&amp;</span><span style=3D"color:rgb(225,228,232)"> s_axis_data_tready_aux=
;</span></div><div><span style=3D"color:rgb(225,228,232)">  </span><span st=
yle=3D"color:rgb(249,117,131)">assign</span><span style=3D"color:rgb(225,22=
8,232)"> s_axis_data_tready[</span><span style=3D"color:rgb(121,184,255)">1=
</span><span style=3D"color:rgb(225,228,232)">] </span><span style=3D"color=
:rgb(249,117,131)">=3D</span><span style=3D"color:rgb(225,228,232)"> s_axis=
_data_tvalid[</span><span style=3D"color:rgb(121,184,255)">0</span><span st=
yle=3D"color:rgb(225,228,232)">] </span><span style=3D"color:rgb(249,117,13=
1)">&amp;</span><span style=3D"color:rgb(225,228,232)"> s_axis_data_tvalid[=
</span><span style=3D"color:rgb(121,184,255)">1</span><span style=3D"color:=
rgb(225,228,232)">] </span><span style=3D"color:rgb(249,117,131)">&amp;</sp=
an><span style=3D"color:rgb(225,228,232)"> s_axis_data_tready_aux;</span></=
div></div> </div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">El vie., 10 jul. 2020 a las 11:59, Carlos Alberto Ruiz Nar=
anjo (&lt;<a href=3D"mailto:carlosruiznaranjo@gmail.com">carlosruiznaranjo@=
gmail.com</a>&gt;) escribi=C3=B3:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr">Hi,<br><br>I&#39;m customizing the DUC b=
lock to do it 2input:1output<br><br>input 0 =C2=A0---&gt; DUC ---&gt;<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 add ---&gt; output<br>input 1 =C2=A0---&gt; DUC ---&g=
t;<br><br>I have added an addsub module between dds_timed and axi_wrapper. =
Apparently it works fine. I can see two tones in the output if the inputs a=
re 2 tones. <br><br>But I have a synchronization problem. If input_0 is a s=
ine and input_1 is a sine with pi phase the output should be 0. And the out=
put is 0, but after a while (3 minutes) no. I think that the channels are o=
ut of sync before the adder.<br><br>Any idea about what is happening?<br><b=
r>Thank you :)<br></div>
</blockquote></div>

--0000000000003e46d205aa1abcf0--


--===============0358544869246040729==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0358544869246040729==--


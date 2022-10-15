Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B88D5FFABF
	for <lists+usrp-users@lfdr.de>; Sat, 15 Oct 2022 17:08:29 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E13C53871EB
	for <lists+usrp-users@lfdr.de>; Sat, 15 Oct 2022 11:08:27 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1665846507; bh=xZjqtgtReME4/RvjjRhJHDO48ZIiAntIz/UAF3JblKw=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=gilSHxdN61j9hYb6AJg3kmlLJVciDZ96fjK7FL0PX0sQZNh7Hn1wUX4DwgZnoXoMx
	 Axs+fjFecXMp1Rc7bPZfg0JzqBy5ZY5ziXZX/Px2tcZ1R/TRStVnBoeC9GDbrhlh13
	 IrK26xIfzmUKcM6wEgr9Iv9u8G5WgMbnGF0IhsRd02Ab4OsnZRhscSAsYFRcW9C6CI
	 tDeNnGOOcY/1UxgWNt87lQMOR09wTwh4dkPirtOjPbjvZw8XsVF/TLw54QEv5mge0v
	 A/Bkpg9OqHBM/BqdSYzcuplidZlz9TGl0zoEFchZcBgQmOwscJU/fI1/gLUSUVAJ87
	 IPtNmSwNC97vg==
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	by mm2.emwd.com (Postfix) with ESMTPS id E9EA4386B03
	for <usrp-users@lists.ettus.com>; Sat, 15 Oct 2022 11:02:59 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="G6XNAtlh";
	dkim-atps=neutral
Received: by mail-yb1-f175.google.com with SMTP id t186so8715962yba.12
        for <usrp-users@lists.ettus.com>; Sat, 15 Oct 2022 08:02:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ApGgVRL6O4buOGVDfoyPaEYfhrpkF5ZJNNiJlw4C+AI=;
        b=G6XNAtlhC/P5ulmvB56oNC+W4THHlqTzAmqUFqBK07f9g4fXGbSKS+/neXskVSDnwC
         NC5oe1gMhxnppJ+ayD0HNcLf2pN++vujhmmu71m4tZ68bh7gjyzP3XVLQ3nXR6qUQR/R
         wuHDXmsVr0+GLqlqd4blSLkPPG1fZ1JeGjl8sJ19n8F6LZDv6xTAgw+ElLMahF8AlgOt
         s/7tbSb0IJg4mqv6EaE0/xzkegEYwEbOiCt31niP4nnfBbzUkTIwT57biXroL/+oVjeJ
         cBIc1Cyn5HODjSvGj/0OCrdTtWXSui7pOqsKjqIzJmNQKBYW80kAqd6tlWmy6Ab2Zlhl
         q7Hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ApGgVRL6O4buOGVDfoyPaEYfhrpkF5ZJNNiJlw4C+AI=;
        b=GCfCDMCociv2GDRUisa/LdF4a5nGS0D3XLvUuE73yMqLCfLv9znyyE7JAFxVCWShIW
         +mR0a2IVLAXUG0uBZcZz+M7qFKag20k+gjoDi37GcttozFFS2xXGIt62r8FlszgaMJur
         ibA84FLUJP8SdZENv9jEBVrNrEhOIxKCmwysO4+yvqh3tV4wRp2+1w6k8GO504NFgOl6
         cZfAFdEdlu0QxaCGvY9jss+p0uw3bjvPx+N1W9TfVXUVM+d5mI+JVL+pdW6evh65RKvT
         vl3AR3NfPFdqeQADlcLLpnPEAv3Dq+VBtBIvqF/L2zqdTbcDXo7YXgaRSxG7G/eBP6DS
         Sx1A==
X-Gm-Message-State: ACrzQf28kjfO8yQ1d1w6WnCmUYChFLqZYNHUYZz0bQx/8D+oOJFbQLf3
	3Gd/tQaXK31M+dCO8B2eAhBD+VPyxwgW3N4BBc0=
X-Google-Smtp-Source: AMsMyM6v9iPqTHDxknXBNoEiSdp3uqbE+RB8PVIN+Aq0sMoS93H4P8yqqcsyuEibPLsHGhrMWqPBYMEgsY62/xWhX74=
X-Received: by 2002:a25:4257:0:b0:6be:6224:5d5a with SMTP id
 p84-20020a254257000000b006be62245d5amr2429234yba.148.1665846178612; Sat, 15
 Oct 2022 08:02:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PtNSw1qOgaKJbRRnUpTfn4A-zK_10frYCk7CoCo93Drhw@mail.gmail.com>
 <CAFche=hOWymQFaD9KkAjX9WSuLAPkmqJBWytMnU5+hu_-fPzEQ@mail.gmail.com>
In-Reply-To: <CAFche=hOWymQFaD9KkAjX9WSuLAPkmqJBWytMnU5+hu_-fPzEQ@mail.gmail.com>
From: sp <stackprogramer@gmail.com>
Date: Sat, 15 Oct 2022 18:32:46 +0330
Message-ID: <CAA=S3PtF8Qm=FXbqzO2h-0Fazy+Gp8VL7HNbYCpHg74XjSffyg@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Content-Type: multipart/mixed; boundary="000000000000baa3b705eb140962"
Message-ID-Hash: 6Y3PVIJO3BP7ZYOXKGPQSAJZXJHUCDOH
X-Message-ID-Hash: 6Y3PVIJO3BP7ZYOXKGPQSAJZXJHUCDOH
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Why initialize large array in Verilog is not successfully in RFNOC blocks...
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6Y3PVIJO3BP7ZYOXKGPQSAJZXJHUCDOH/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>

--000000000000baa3b705eb140962
Content-Type: multipart/alternative; boundary="000000000000baa3b505eb140960"

--000000000000baa3b505eb140960
Content-Type: text/plain; charset="UTF-8"

Yes, it is. I attached some example file. I changed name of them in code
but I am faced with a warning.........
WARNING: [Synth 8-2898] ignoring malformed $readmem task: invalid memory
name [file.sv:50]
WARNING: [Synth 8-2898] ignoring malformed $readmem task: invalid memory
name [file.sv:51]
In simulation it works but i synthesis I am faced with top warning..........
why in RFNOC block I faced with this error for mem files.........can any
one guide me?

On Fri, Oct 14, 2022 at 7:36 PM Wade Fife <wade.fife@ettus.com> wrote:

> Does the file you're reading from have enough data in it?
>
> Wade
>
>
> On Thu, Oct 13, 2022, 7:39 AM sp <stackprogramer@gmail.com> wrote:
>
>> Why initialize large array in Verilog is not successfully. When size of
>> array is 255 it work like charm but for other number more than 255 like
>> 1024 and ....
>> we observe all array is filled with zero? why large array in FPGA can not
>> initailize correctly????
>>
>>
>> Code:
>>  reg signed  [15:0]  data_i_pattern_buffer [1024:0];
>>  reg signed  [15:0]  data_q_pattern_buffer [1024:0];
>>   $readmemh("out_i.txt",data_i_pattern_buffer,0,1024);
>>  $readmemh("out_q.txt",data_q_pattern_buffer,0,1024);
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000baa3b505eb140960
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes, it is. I attached some example file. I changed name o=
f them in code but I am faced with a warning.........<br><div><span style=
=3D"color:rgb(29,29,29);font-family:&quot;Segoe UI&quot;,&quot;Helvetica Ne=
ue&quot;,Helvetica,Roboto,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&qu=
ot;Droid Sans&quot;,sans-serif;font-size:15px;background-color:rgb(234,232,=
207)">WARNING: [Synth 8-2898] ignoring malformed $readmem task: invalid mem=
ory name [<a href=3D"http://file.sv:50">file.sv:50</a>]</span><br style=3D"=
box-sizing:border-box;color:rgb(29,29,29);font-family:&quot;Segoe UI&quot;,=
&quot;Helvetica Neue&quot;,Helvetica,Roboto,Oxygen,Ubuntu,Cantarell,&quot;F=
ira Sans&quot;,&quot;Droid Sans&quot;,sans-serif;font-size:15px;background-=
color:rgb(234,232,207)"><span style=3D"color:rgb(29,29,29);font-family:&quo=
t;Segoe UI&quot;,&quot;Helvetica Neue&quot;,Helvetica,Roboto,Oxygen,Ubuntu,=
Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,sans-serif;font-size=
:15px;background-color:rgb(234,232,207)">WARNING: [Synth 8-2898] ignoring m=
alformed $readmem task: invalid memory name [<a href=3D"http://file.sv:51">=
file.sv:51</a>]</span><br></div><div>In simulation it works but i synthesis=
 I am faced with top warning..........</div><div>why in RFNOC block I faced=
 with this error for mem files.........can any one guide me?</div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, O=
ct 14, 2022 at 7:36 PM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com"=
>wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"auto"><div>Does the file you&#39;re reading=
 from have enough data in it?<div dir=3D"auto"><br></div><div dir=3D"auto">=
Wade</div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">On Thu, Oct 13, 2022, 7:39 AM sp &lt;<a href=3D"mailto:stackprogram=
er@gmail.com" target=3D"_blank">stackprogramer@gmail.com</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Wh=
y initialize large array in Verilog is not successfully. When size of array=
 is 255 it work like charm but for other number more than 255 like 1024 and=
 ....<br>we observe all array is filled with zero? why large array in FPGA =
can not initailize correctly????<div><br></div><div><br>Code:<br>=C2=A0reg =
signed =C2=A0[15:0] =C2=A0data_i_pattern_buffer [1024:0];<br>=C2=A0reg sign=
ed =C2=A0[15:0] =C2=A0data_q_pattern_buffer [1024:0];<br>=C2=A0 $readmemh(&=
quot;out_i.txt&quot;,data_i_pattern_buffer,0,1024);<br>=C2=A0$readmemh(&quo=
t;out_q.txt&quot;,data_q_pattern_buffer,0,1024);<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" re=
l=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div></div></div>
</blockquote></div>

--000000000000baa3b505eb140960--

--000000000000baa3b705eb140962
Content-Type: application/octet-stream; name="outi.hex"
Content-Disposition: attachment; filename="outi.hex"
Content-Transfer-Encoding: base64
Content-ID: <f_l9a1qg5i0>
X-Attachment-Id: f_l9a1qg5i0

MzgzZAo2YzJmCmQ4MWEKMjIzMAplZmZhCmZiMDgKNDVhYgphNDQ1CjIzMTAKZDNiMgpjMzQ2CjFm
NDcKNDczYgo4NzVhCjdhZjMKMzg2MQphNmRkCjBiMjQKOWFlZApiYjM4CjU5YjYKZjJmMgplOWY5
CjE1NzQKZDdmOQoyMjE3CmM5NmEKZWNjOAphMGI2CjFkOTAKOGQ3NAo3YTZkCjQ0NWIKZTdkNwoz
Y2FkCjg3MzIKMjgzNgowYmE1CjJhZjEKNjAwNAozOTUzCjMxOTMKN2Q3MwoxZTcyCjU0ZjkKNDgw
NwoxZjZkCjc1ODQKNmZlZgo0YWI2CmM4OGMKNzcwZApmYzBhCmZiOWUKY2YxNAo4OWJhCjJjNmMK
ZWQxNAo2NGQxCmMwNzQKYzEwYwoyYzhhCjY3ZDIKYWFiMQowN2M5CjRhNTEKN2Y0NApjMjMxCmRk
NzcKMGNmNwphZTc2CmJmNzgKNTdiZgpmOWY3CmYzMDkKMTNlMwozMjM3CmU3NzAKY2NjZgpiZjQw
CjY5ZGIKN2Y1OQpmODcxCjMxMmMKZjk5MQowMTU5CjEyOGQKMmI0ZQpjZmZhCjU1NjkKYjkxYwo1
NDgyCmEwYzEKYTlmMwpmMDRhCjkzMDAKOGU3OQoxMDY2Cjg0MDIKYTVlOAplNDkwCmQ2ZDIKMTQz
ZgpkZDc4CjRjMjEKZjQ0OAphNGNlCmVjMTQKYmU4MQo1YTViCmIxYWMKZTI1MwozZWYwCjBkYzcK
ZjZlYQo3M2RhCjBkNGMKZWMwNAoxNDI2CjVkOWIKNDc4Mgo5OTQ3CjI0NjYKZmQ4YQowOTQ5Cjdk
MTkKNTliOAo5OTg5CmRkYmMKNjM5Mgo4NGNjCjkwNWIKZDJkYwoxMWIzCjc2MjUKN2E1NAo0NTI3
CmZiYWUKNTc0MQo5ZDhlCjA1OGUKMDU2ZAoxNWEzCjYwNmYKNjYyYgpjZjRmCjMxMDAKN2JiOQo5
MDJjCjg4OGMKODhjOQoyOTYxCmE2ODkKNjg4NQpmMmE1CjQ2NDkKMGJiOQplZGU2CmM3MjcKYmMy
Zgo4MTYzCmIzOWYKNzdhOApmZTcyCmZhNmQKNjc1MAo0NThiCjQ5YmYKNzgwNApjOGI2CjVjZWIK
YTU1ZAoyNDM2CjUyNWYKMGM1NgpmY2Y0CjlmNzgKODQyYwo5NDgxCjU4N2UKNzRjMQo0ZjI2Cjcz
ZGIKMzc4MApmMzQwCjQ4YjgKMGZmYwoxMzFlCjhhNWYKNTMzMwo2MmUxCjVhYTUKNjgyOQozMWNl
CjdjNTEKNzVlYgphMzllCmU2MDMKOTExZAo4YjMyCmNjNGMKNmM5NQpmOTg3CjBjNmYKZWYwOAo0
MjQyCjY3NDEKNGYyZAoxOTIxCmQ4NzUKZDk4YQozMzZjCjQ2YWQKYjEzZQozNGJkCjgzMjAKODYy
MwpiNGY5CmRhYzgKYjVjYwpkZjllCmFmNWMKNTg4Nwo0Y2Y3CjkyNzQKM2U2YwpmMWMyCjI1OGEK
ZWJiMQpmZTE3CmE1MTAKZjk0YQpiNzMyCjNkMGIKYmRkMQo4YTYxCjY2M2YKNWE3Zgo2NDZhCjhi
ODEKMjIyYgoxMDRhCmNiMzcKYTdhMgowYzQ4CjU0ZjAKYWFlMApiYTkxCjg1OGMKNjNlZAo1Njg4
CjY3NmQKMDMzNgowZWFlCjdjMzQKYzE5MgpjM2E1CmI3MTEKNzU3MApjNzljCjRlYzgKNDMzYgpj
YTJkCmQxZjMKYWFlNQphY2ZmCjU1NGQKM2IzYwowNzQxCmMyNTYKOWQwZAoxNjk1CjE1ZTYKOTY2
NAo0YzBmCmYwMzcKNDhjMgo3NmU5CjdkYWIKMjhlYgo4Mzc5CmRmNzAKNGFiZgo0OWQzCmYwZmQK
YTI4OAo2ZDA5CjJlMmMKOWM2YQo5NTg2CmM0ZDYKZGZjNQoyN2Q3CmQ4MjUKY2U5OAo2NjgwCjAz
ODgKMjQzOApjMzcxCjkzZWUKMjg1MwpiNzRhCjQ3ODcKOTUzYgoyZjdhCmI1OWIKODc2MApiYjU5
CmE4ZGMKYzE1Mwo4ODRkCmRkNGEKNTk1Ygo2NjIzCjNhMjQKMjhmZApiNTIwCjc0ODgKYjA2MAow
NTZkCmQxYmIKYTY0MwpmNDY1CjJmNjEKM2ZmMQowOWNmCjFjMTAKZTM4MQpkYzEzCjJlODMKOTZk
OApmMDRjCmQ2NWMKOWFiZgphMThkCjZmYTEKNjI1NAo3YjE4CmNiY2IKNmEyOAozY2Q3CmU3N2MK
MmM4MAplNzQ4CmQyNmMKMTI5OQo3MzAxCjg3OGIKMmQ1NwoyMWI4CjI3NmYKYjg2NQo4MzQ1CjJm
NjkKZGM4OApjYTU5CmM1NmMKMWVhZgo4ZTQ1CjBkMTQKOTA3MQowNjM1CmUyYTgKZjE1MQo1OGZk
CmM2MTYKMjk4ZgoyODYxCjIyNTMKZjNjYwoxMWE3CmJiNzQKYjNlYgo3ZjE5CmY3ZmYKMTY1Ywow
ZGZmCjkyNDEKMjYwNAoxNzk1CmIzZTgKZjc3OQpkNTI1CjlmOTEKZThjYwo4ZDI3CjQ0MjgKMDA2
Zgo3ZjZkCjc4MzcKNTU2OQozNzkxCjcxYjIKZTcyYgoyNjA1CmVmYTYKMzVkNwpjZjY2CmNlZDcK
MDg2YwoxMTRmCmRiYzQKNTAzNwpmMGVjCjdiYTkKYjNjNwo4YzMxCmUxYTIKNWM4MAo1NzdhCjcz
NGEKY2IzYgpmYjBkCjc5MGIKMTgxOQo5NmIwCjRiZTYKZGMyOAoyYTQyCjI3YzcKZWVhMQo1ZjYw
CjM5ODMKNTlhNQpkMTQzCjlhMjkKY2Q1Mwo4Mzk1CjVmMDMKMmVhNwoyNGMzCjc2ZGQKZDI0ZQo4
MzgxCmU1MTMKOTkyZApmNDE1CjgzNzMKYTU0YQpmNGE0CjllM2EKMWRjOQozN2FkCjcxOTcKNDdj
NQpmMjYyCjU5OTIKZTc4YgphZDg4CmMxZjUKYTA3ZgpjNTY4CjU3ZTIKNjEzNwpkYTAwCjJmMDcK
MmVjYwo2ZDcyCjUxMzIKNjRkNwpjN2M5CjE3MTcKNTdmMQo4YTdkCjc0NWMKZjZkNgpkZjFhCmQ0
YzkKMDI1OAo5YzZlCjQzZTYKZjExZgozZDIwCjAzNWUKNmE4NAo4ZWFjCjRkMDAKOTY1ZQphOTNl
CmQ0OTQKNzk3MAo0N2Q1CjZlZGQKNjllNgpkZWUxCjAwMTUKN2E4ZApkYzcyCjQxZDMKZWUyNwo5
NzJiCmJlZjgKMDVmZQo5NzM5CjEwZmYKYzdkYQozZmMzCjA0ZTMKMTI1MAo4MTg0CjFiNTAKODc2
ZQpmYjIwCjhjM2QKZjdjYQplZTY0CjdjOWUKMGYxZQowZTBjCmZlNDMKYjVhNgoxZTU0CmFjN2MK
OWViZQo0ZmViCmU3Y2UKNGUzYQpiMGMzCjU4NmIKMTFmOApiMTRkCjE4MDcKNmQ4ZQo3MDk4CjY4
NWEKMDg0NQo1OThlCmEwNzAKYmEyZAowZjIzCjJhNDQKYjM1NQo3MjZlCmFmODEKMTRkZQplMDlh
CjFiYjQKMWRkYgphNzg5CjI5NzcKZmI4ZAplNDI0CjQ0ZTkKZWZiMwo3MzEwCmUxNzAKYjA1OAo1
ZGI0CmY5M2IKMTA5NwoyZTFkCmJkNTcKNjdlMApkYTNhCmYxNDMKZmZhNwphODIyCjk5YWIKNTFl
Zgo0NWY4CjZlNTgKMWU0Nwo5MGQ5CjBjYzcKMGFlMgowYjVlCjIwOGUKMDE1OApmMmMzCjY5NzUK
OGU0YQoyODIxCjg1NjIKNzA2YQoxODM1CjIyYTAKOTI3NwowMGQyCjAxYTEKZDI2ZQpjNGJjCjVh
Y2MKMjNlOQo1OTQ4CmY3OGEKOGFkZQplYjlkCmNiNTkKMGQ2MgoxMGQyCjQ5ZDgKMTc2NgphOTU5
CmY5MDAKOTllZAo1MGQ4CjE0ZjMKZmRiNgozZDRiCjI0NWMKYjJmYgo0NzUyCmIyN2IKNzA1Zgph
ZDllCmE3NDIKNjllYwpkZjQ3CmMwNTYKNjBlZQo2YTU0CmUwN2EKMWZjYQoyMmI5CmY2ZWUKZmU3
YwozMzBlCmEyMjMKMGJiNAozMTZmCjE4ZjgKMDRlOQowYTRiCjM3ODYKNzg3YQo5NWFjCmJjOTMK
ZmM5NAo2ZjkyCjcyYWMKMGEzZgozNzM0CjkxZTcKNTk3MAo2YjFlCmZhMDgKODFkYgpiMjZjCjVh
NWQKYWEwNAo3YjQ1CjllYjcKNzYyYgo1MDlkCmU4N2MKYWRkMQphOGRmCjc5NDcKZGJjZQoyNzli
Cjg5MjEKOTVmNQpkNDhhCjJlYjYKMjAzYgo5NGIyCmJlYjMKYTAwYwo3ZGFlCmNkY2YKYjFmMgo3
NDQ0CmM5ZWQKYzcyNwo5OTQyCjdkYTAKOGM3ZgpjZmVkCjViOTAKNDQwZQo5M2U2CjU5NTYKMTFj
OAozY2FkCmJmN2UKMjY5ZAphYWEwCjg4NjUKYWZkYwozYmIxCjI2MWQKOTc1ZApjZmEzCmViM2UK
ZmI0ZApjN2I4CmRmOTAKYjViMgowZWVmCjNlOTMKZjRmMwpkOWViCjFjNzYKMTg3NQoyZjU2CjQw
YWEKYWRmYQo3N2JjCjA0YmUKNmIxNwowOTRlCmRhZmQKNTYyZQo4MjBmCmNjZDAKMzQ2Ngo3MTYy
CjU5OGIKOWU1NAoxZWYwCmNkY2YKMGMyNApmZDIzCmVlOTkKY2ViYwo3NDI2CmJlZTEKMGI3Nwpi
NmZlCmUyZDUKNDAxMwoxZWJhCjBmOTkKNTJjNwpkNjExCmFhNDkKMjc5ZQozZjhjCmJkNjkKZTdj
NwpiYWM0CjA2MjAKMGQyOQo1OTUzCmQ0Y2EKMWJjMgo0YjRjCmMyNDUKN2RhMApjNDBlCmI4OGYK
OWI5MQo2M2JkCmYyZGMKY2NiYgpmMmMzCjRmNTUKZDEwYQo1OGMyCmFlNzAKMGUxMAozNTg5CmQz
OWEKNjBhMwoxOWRjCjczY2MKOWIwOQpiMTAzCjk3NjIKOWNmZgpiNjkyCjJkYTYKMmQ1Zgo4ZGYz
CjM4MjQKYzQ0MQpkYzgyCmMxNTUKMDFjMgphMmY3CmY5YWUKMzFlZApjYjNmCmI2YzgKNTcwNgpl
YzkxCmNjZWQKOTM2ZQozNjVjCjdlYTIKODI1Ngo4MzQxCmFhNDAKZTA3MApiMDk4CmY0YmUKNjIz
OApkMDc3CjI1NGMKNzAwOAo3ZTJiCmRiMjkKMzU5YgoxODQ3CmIyZjQKM2U1MAozNDEwCjhjYjMK
ZjcxZQo1YWFlCjcxNjAKYzdjZApkZTIyCjE0YjIKNTNmMQo3ZjcxCjZiM2UKZWJlNQpjNWQ1Cjk1
ZDEKMjEzYgpjYTgxCjI5YTIKMWNlNQo1NTY4CjhiMGUKMGVmZgpmNjFlCmNlNGMKYjU5OQoyMDI5
CjEzZDAKMmJjNwoyMjYyCjEyYmYKYzMzNQo4ZGVhCmI1OWUKNjE4OAo4MmRjCjEyOGYKNmY1OAoz
MzRmCjA5MWUKMDQyYQowYzNlCjExNzMKYzgxYgoyOTFkCjlkYjAKOWRjZAplYWJmCjQ1MDEKYTIy
ZAowNjNmCjgzOWIKODhjMAphYThkCmUyYjgKNTc4NQo3MzgyCmM0ZjgKOGIzZQphYWE3CmRkYmUK
M2I2NgplZjgxCmViZTUKNzJiYwoyMzAzCjZlNDkKMDIyZgplNDc5CjRhN2YKNDliZAo2OTBhCjY3
MWYKZDE3MAplOWE5CmYxYjYKOTljYgpiNDdlCmJjODYKNzM2ZQpkNWNmCmMzMjgKMjYwOAo5NDg1
CjhjYjQKZDBhMQpkYjYyCmMzNjgKZGExYQphMmZmCjlmZjIKMjBiMwo5MWEyCjNkYWQKYTgwNgow
NTMxCmU1MzMKZWM5Zgo0YzJmCjc0OTYKMzhkOQowMzMwCmNlNzEKNzk4OQo3ODVjCjhjNDkKYjdj
MApkOTE4CmQ4MDgKY2JkYgo5OTYwCjVjMzIKNDE2YQo4YWU5CmU4MGQKNjEwMwo5NjEyCmI4YWQK
ZTVjNgpiY2Q1Cjg2NTUKZWMzMApkMDUxCjVlNjYKZjNhYgowM2QyCmFiM2MKN2ViOAoyMzVmCjRk
NDUKNTA4ZApiMDcxCjU0ZjkKMmI2Mwo3YzQ5CjgxYWEKNTViYgpiZWU1CmVhNGIKZDRmMwplYWM5
CmExNjkKMDk4YgpiOGFhCjc1OWUKNGNmZQo2MjE2Cjg5MDkKZTU3ZgphYTFmCmMzYzcKMzhiNAo5
NTJiCmVjZjMKYjM2NAplNzk2CmZmZDUKMzU3ZAoxNGRmCjg2ZDMKMmQ0MAoyNGJlCmQ3NmYKMzk3
MgpmYzgxCjU5Y2MKNDM2MAoxYWRkCmMzMjYKMDNmNgphNTE0CjNlOGEKNWM1MQo2ZjQ3CjIyNDYK
NGMwMwo0ZTFjCjg2ZGMKYzc5NgphZWI1CjcxY2IKZjNjOQo5YWJmCjAxZmYKNjFmMQpiYWJkCmE2
NzkKOGM2OAoxNWJlCjE1NWMKMWUwOAowZTY3Cjc2YzQKMjQzNQowNGEzCjRlMGMKM2MzZQpmM2Nh
CmYxNDEKYjcwMwplNTRhCjM0YjAKMjc2ZAphMzYwCjhiNTcKYTc5NQpmYzE0CmQwMzgKMmM4Mwow
ZjQwCmYyMGIKMjdkYwpjOGVjCjQyNjgKYjRmMgplMDFkCmI1M2UKNmZmYgo2MWIyCjNiZTIKYzdm
OQo1ZGU5CjVhM2QKMDc5NwpkNmRlCjYzZmYKMTkyYwoxOTdlCjQ3YTQKYzY2Ywo0ZTAyCg==
--000000000000baa3b705eb140962
Content-Type: application/octet-stream; name="outq.hex"
Content-Disposition: attachment; filename="outq.hex"
Content-Transfer-Encoding: base64
Content-ID: <f_l9a1qg6w1>
X-Attachment-Id: f_l9a1qg6w1

NTdkMgo0ZTY5CjFmYWIKYmIzNAo5ODk0CmY1MWMKOTIzMgo4Zjc1Cjg5Y2IKMjJmMQpmMzgxCjFk
ZTEKNWY4Mwo1MWU4CmE1NDUKNzY5YQozNGE2CjU5NjYKMTMxNgpjN2VlCjkyODEKYmIyYQo5NWYz
CmEzZDMKMzg1YwoyYmRiCjZkODMKYzhhNgo2MWJmCjU4Y2YKNmJiNAozZmYxCmIzMGYKNTNjNApm
NGQyCjdhNWMKN2RkOQpkMzdmCmRmYTMKYTZlMQoyMWQ5CjMzODEKMzI4Mwo0YWE0CmNkOTQKNzRm
MQoyNDdkCjVmYzIKOGYyMgphNjBiCjM4ODkKN2JiMwpiMWNlCjFiMTgKYWU0OQozMmQwCmIzZGYK
Mzk3Ngo1YThiCjFlMWQKY2Q3OAowYTA4CjQ4NTQKMWJhNAo0OWE5CjUwZTMKN2M3Nwo4Yjc0Cjhi
NzQKOTYxYgphZDYyCmRlYTYKNWUwMAozMGVjCmQzNTkKYTA3MAo1M2MyCjk1YjkKMjUxOQowZDcx
CjE5NGUKZDFiYwo0NjhiCjJkNmQKMWI3Ngo0MzgwCjQ1ODMKYWJlOAo4N2I3Cjg2ODgKNTc4OApl
YzhjCjlkMjIKNGI5MgphNzBlCjNmODEKZjdmYgo3ZmYyCjllMmMKN2IzZgoxZGIxCmZmOTMKM2Jj
Ywo0ZDk5CjE2MWYKNzVmMwplODA1CjgwNjAKOTYyMwo3MDMxCjQ0YWUKNjcyMgoxODc3CjYyYTkK
NzcxYQo4MGYwCjI0MGIKYmUxMgpiYTU5CjQ2OWIKYjc4NgpkZmFiCjY1YWIKMGQwZAplNjBjCjU1
ZWUKY2Y2NQoyZWFmCmNlYzcKNGVkZAozZmI4CmRhYjQKOWZmYwpkMTljCjBhMDcKOTI3MQozMTk2
CmQ1NGUKYWM3NAplNTMwCjExODIKY2MxMgo0YTRiCmQ2YjQKOGJjZApmMjM2CmNmOGIKOWY2Ygox
ZTNkCjc2Y2QKMTg1MgozYjUwCmEwOGYKOTVjOQo1YWY4CjNhNmUKNTdhMAo1MTFkCjYyZGMKMGQ0
NApkYjI5CjYzZjIKMGU4YQoyNDA4CjU0ZjQKOGU0MgpiYWQ5CjBiYzEKYWFkMwowM2FmCjUxZjUK
MzgzNQo3MzlmCjNhYWMKMTFhOQphNzc5CmM2YTUKYTU3YQo4OTc0Cjg2ZDkKOWU3YwozOWVmCmY4
ZTQKN2U0YQo0MGE1CmIwZDQKZGUxYgoyYzM5CmYxNTMKZGZiOApiNjEwCjg0NmQKY2NlYQozY2Yw
CjhiZjUKZjUyZAplMTExCmMzMmQKOTQ0Ngo3NmMwCjg5NTgKNjczMwpiZDFmCjQ2MDUKOGZhYwpk
ZDA3CmRlZjgKZmQ3NgoyNDg5CmUwOWQKNGRmZgo1Njk2CmUwNWQKMjk5MgpmMDNlCmEzZjQKMzM1
NQpmY2VjCjVlNjEKN2QzYQoyMzM2CjBkYjEKYmE4YwowOTUwCjZkODcKY2I2NgoxYWQ3CjAzYzIK
NDBkYQo1Zjk1CjQxYjcKNTg2NQpjNWM3CjgzMWQKMzg4Mwo1MTFjCjY3MDgKNzVkMgo4NTFjCmEw
Y2EKYjJiNAoyMTYxCjRmYTUKODAzMgoxNjc1CjY0NmUKNzhiNQo3MDZhCjVlMzQKYjllNQoxOTZl
CjdmN2UKOThlYQowNDk0CjhhYTkKYWJiOAowYjkwCjNmMTAKNWQ4Mgo0NjgzCjQ2ZWMKZTkyZQo5
ZmFkCmQ1NjIKNGM1ZAo4NDVhCmZhN2IKNDk0MQphMWZhCjM0MmQKZDE5OQpiNDIwCjE4ZDgKYzk0
ZAo0NWU0CjdmYjYKZWE1OAplYzUwCjdlYmYKYmM5ZAo2OWU5CmJkZDgKZGI0MApiZTIyCjhhYmQK
MzU1ZAphMmUzCmU1MDgKMTg0YwpkNTc4CjdlNjMKYzkwOApjOTg5CjQyMGIKMmU4Nwo0YTdjCjJi
NjkKYWQ0YQphNTMxCmY4NjEKMGU3MgphYmU3CjIzZDYKZWZiMwo3MzdjCjJhY2QKMjA5NgowMjA5
CjY0MGMKMmNjYQo5NDA3CjM4YzEKMGFmMgo3MjE1CmJiZWIKYTI2MgowNTFhCjVjYTIKODg2ZQpj
MTQ1CjIxM2YKMzZkMgpiZDIxCjEzZTAKOGI0NApkOGY1CjNhOGYKMGI0ZQphNDc1CjA2MjIKNWMx
MAphYjFjCjYyNGEKMmZiNgo3MGU3Cjc2NGEKZjgxNAozZDAwCjFjYTUKMmI2Mwo4N2Y1CmFhNzIK
Y2QxYwowZTY1CjFhM2EKZDFlNAphMzJiCmVlY2UKMzFjOApjYTFjCjRjMmEKNDA0MAo1NTU3CjU3
YTMKOTFmMAowOTI2CjM1MGEKMTJhMAo4YzAxCmZhYTQKODJhMwpmOTRiCmQyOTYKNGFiMgo4YTMy
CmM4ZGQKYjgyOAo2MmIxCjZjYzUKNDdjMgo4MzBlCmRmNzkKMTQ0YQo5OThjCmM3ZDMKODU2YQo4
NGZlCjdlMjkKOTJiMwphNTM2CmQzY2UKOTEwNAo4MTRmCjlhMTkKNGNhYgphMTYxCmQxOGMKMDQx
NApjZWEzCjI0MGQKODUyZQpiMWFkCjdkOGUKOGM2NQphMjFmCjdiYzYKMTE2YQphMmQ5CmFhMDUK
ZDU5Zgo5NTFiCmU3MTYKYTlhNwo4YjYzCmVmMjAKY2E5ZQoyM2MwCmY2YjEKY2FhYgo1NWMwCjcx
MjEKYWI1YQpmNTI2CmQyNGQKN2Q0Mgo4ZTZhCmYwYzYKN2ExYQo4NWQ3CjQ4ZDgKODBkMwowZGZm
CmU4MmEKMWFiMgowODYzCjU2MzcKMDdlMwoyOTVlCjI0ZjcKNDgxYQpiYzBkCjliODgKZDBmNwo2
NmRhCmYzYjEKYjFiOQpjNDBiCjVkMjIKMGI1MwphNTBiCjcxYjMKNTZhYQoyMDAwCjlmMTgKMjIx
ZQo3M2Y4CjM4ZGMKNjAwYgpkZDZmCjVlNjYKZDFhOQowZGFkCjJhYWYKMjM3NwpmODk2CjYwODkK
YjM2MQplNDU5CjMyMDUKNTJhNQo1MWM1CjFhZDgKZjg0YQo1MmM0CjAyNTAKYzU0Ygo5MTMzCmIx
OGYKZjgzMAphNmNhCjdjN2QKZWRkMApiZjUwCjFkNWQKMjJlNQoyZGVlCmZiZmYKN2FhNAo1NTVk
CjJiYjQKNGYxNAo5ZTYxCmY2NDQKNTQ5OAplNmE3CmU5MzcKNDIyYQpjMmI0CjJiOGQKNTQ3Mwo3
NTJiCjNkZGYKNGY1MAoyOTk1CjBkMWUKNTFjZgo2YzM4CjhhYjQKMDQ0YwpjMjk3CjQ4ZGEKZmZh
Ywo1ZTIxCmZkNmUKNDdkMApiMTllCjI5ZDIKZGY0MgpjZGJlCmQ3NzQKM2I1NwpmNTg5CjQ2ZjkK
NDY5OQo4ODczCjlkODMKYjViOAo1MGI4CjMwZDQKNjk1Ywo5ODA2CmRlYjYKOGI5OAoxZTczCmE1
NGYKMDE4NwoxZmRjCjY2MTcKMTMwZQpmOGIyCjBjMmEKZjBhZgpkOTM5CjlhZjkKMTQzZgo1ZDhk
CjdlZGIKM2ZhNAozZTc0CmNkMDQKMWEwNgpiNTM1CjUwZDQKYjU1Ngo5ZTczCjk4MTkKMDBlYwo3
NWM3CjllNTUKZDUzNQo5NDA2CjNmNmIKM2I5MAoyODMxCjZjM2MKOThkYQplMDk2CjE0ZWYKZWQ3
OApmNzkzCjY5ZjMKNTljYwo0NWEzCmY4ZjgKNTdmNwpkODk5CjllMWMKZmY4NAozNmEzCjcyMjYK
Mjc5ZAo0OTRmCjEyMGEKM2ViMwo1ZWJhCmRjZGMKYjgzOQoyZmNmCmQ0NzkKYmU0MgplMGU5CjVh
NGMKODhiMAoxZDI4CjlkMDYKMjIwYgo4MjZkCmJiNDQKMGZhMwozNzhiCmVkYzAKYTdkMwpmMjYx
CmUxZGUKNTVkYgoyNTUxCjBhNWMKN2M0OApiMzViCjU2MDYKNDEwNwoxYjkzCjE2NjIKNTg0Ygox
ZWRmCjE5YTEKNWZkYgpjOTIzCjY4M2IKZmRlNwo3YmZlCmFiOTQKMWNmNgoxNjJhCjVjZjAKODk5
ZAoxMDA1CmJlYTEKNzU5YgphMWY3Cjg4NTgKZDM3ZQo4ODk5CmU0OGYKNjlkNQpmYzIwCjVjYzYK
MTU5Nwo3MThjCjQwYTgKZTQ1Mgo3NTIyCmIzNDkKYzY3YwowYTczCjhjZWEKN2M4Ygo0YzBjCjIw
MjAKYzUwZQo1NDM0CmQxYTUKNTUxNwowZDhhCjNjMWMKMWFmNQo1ZjA3CjY0NjMKMjAxZQo5MTFh
CjNhMjEKMzk0Ygo1NTQ5CmQxZWIKMWEyZQowZjk1CjczMDAKNmQxYwpkZmVjCjFiNzIKZTM1ZQpl
ZjQ5CjEwNGQKYzY3NwpkOWNjCjdlNjMKODAyZQowODc1CjljYzgKOTQ1YgozNzE5CjE4YmQKYzJk
Ywo5MWE1CjI1Y2YKNmQ2NQo5ZGMzCmM5MGUKOGViYwo0ZjYwCjAzOWIKNWU2Zgo0OGM1CmViMmUK
ZDMzMAo4MWFmCjBjZWEKZmVjMQpiODc2CmJjNDUKMmIzMgpiMDhiCjM1YzgKNjhiMQo3YjliCjk3
ZjgKOTllMwo3NjY4CjFjNzUKYjVmMwo3YzIzCmRmMzQKNTUxOAoyZmNiCjZlMTMKNzY2YgplNjM1
CjU2MjUKNzVmYwoxY2M1CjQzZWYKYWJiNgo5MzZjCjdmZDAKY2MyMAozOWZhCmZkODUKOGY3Nwpk
ZDliCjJmMmMKNTExZQo4YzAzCjdkOTYKMDNhYgphYTM1CmE1ODEKYjM4MAo4YjU0CjNiNWYKZTcx
Nwo2YzA5CjdlMDYKMGJhNQowYzNkCjI0MzcKMGZmYwpiNWVlCmFjZjUKZDMzMQo0ZjhiCjZlZjAK
N2Q2NAphMzY3CmE2MmYKNTU1NgpiODkzCmNiNGMKMzhjMQplYjA3CmIwYzIKMjdiNwo4NzgwCmI4
NDcKMzlhMAozOGU5CmQ0YjAKMDFlZApjMTVkCjg0NjQKMjI1OAowOGNmCjRhNzAKYTA0OQplMjM1
CjcyMzEKYmFiMQo4ZDk2CjcwYjgKNmRkYQphYzY2CjZmMGEKYTY4MQpmODQ1CjRhYTAKYmEzMgo5
MjRhCjg2ZTMKZjFiMQo0MTVmCjM5ODQKOTdmYQoxZmI2CjE0MzUKNzkwYQplODkyCjZlNjAKNjg1
MQo2NjM0CmQxMmUKYzAxYwoyZDgwCmIyNWEKNzI0YgpkNGMxCjZhMzUKMjZhZQpjMzlmCjc0NWQK
YzBkYQplYTM5CjIwMGUKNjE0MgpiM2UzCjdiYmEKM2E1NgozN2MyCjA2MTYKNGQ4OQo0YzcwCjlj
ZDkKOWUzMApkMmM2CjYwZTAKZGE2ZQo0NGVlCjcxNjAKNDc0NAo4ZGRmCjRjNDYKMmY5MQphNTBh
CjFjMGIKMTRkMQo5OTU2CmRkN2QKMTgyZgo4YTMxCjk1ZmYKZmM2Zgo1ZDUwCjJkOTIKMWUxNwox
NWVlCmEwZWYKZGQ4YQo0Yjg1CjhmN2QKOTJkNwpkZTg3CjAxYmYKNTY0MAo1OGRiCjE5ZjMKNWMx
NQo2OGI5CjljYWYKZDJkNAowMTYwCjY0NWUKMzc4ZQo1M2Y0CmJkOTIKM2UyMgozZWEyCjcxZmQK
ZWU2OAo4Mjk5CmNiOTQKZDY0NAo5YzllCmU4YWQKYzlmMwo4YzFmCmE1MWIKZDg5MwozOTVkCjFm
OTcKYWI0NQo2MjMzCjE1YmYKNzQ1OAozYjRmCjhmYzUKNzdlOQo0YTE0Cjk2MTcKY2U5ZQpmY2Uy
Cjg0NjcKNzUyZgo4MTRhCjk2ZTAKYTFjMwpkN2VkCjFlYjUKMTNiMAoyMmI3CjE0NGYKNTA2NQoy
ZTFiCmVkMTYKNGM2ZQo0OTc3CmVlYmIKZjc4Ygo1OGVlCmFkOGMKZTA4YwowZTcyCmFjNWIKNjVk
Ywo1YTJlCjg0ZjcKNDhmMgozNzQ1CmIwYmQKMDUyYQowZTZiCmE1ZDIKYzM5NQo5MzFjCjRiZTUK
Y2IyMgo3ZmQxCjE4OWYKZWUzYwpiN2FmCjZmYWMKMTEyYgo2ZWY0CmVkYWUKNTViMgoxNTU5Cjlj
MjcKYTFjOAo5MTE2CjljMmQKNzQyMApmM2I0CmY1NjAKM2EwZgozOGU5CjkwMTMKOTEwMgpmZmQ2
CjgxNzAKYjdhNQo5Y2Y0CjY4NWEKN2IxOQo5NTUwCmQwNDUKMWYxZAoxZmFjCjZhODAKMDQyMQpm
Njg3CjNjNWIKMzE0Ywo0MGI0CjEwZmIKZDBmOQo3ZTI1CmZlNmUKZjU3NAowZDA1CmIwZmEKMWI1
NAozNDczCjNlMWQKMDRmZAozNGVmCmQ1N2IKMTA4OQo2MzUzCmZkODgKNWM5Mgo1YzI2CjBhOWMK
ZjM4Ygo1YmNhCjI1NjUKYmQxZQo3YWE1CmUwZTgKMjQ0MQpmOTMwCmM5ZGYKYzQ1ZAphNTcxCjZh
NjkKNGRmOAo5Zjk2CmJmZWMKMDM1MgpmYTQ0CjhlZjQKY2U0NwozNDJjCjc1MTkKYjRmMApmZDBk
CmU4YzIKOTg1YgowZmFkCjcxNjIKNDU3OAo2MGIxCjc4NDcKNTI3NAo0MjdkCjMwY2IKNDI5MAow
ZWFiCjZjZWUKNzg4MwoyYjBlCjM4MTYKNWVjNAoyNmI3CjRhNWYKMDY2NwplZTIzCmYwODMKZDMz
ZgphMzY1CjllYmMKOWFlZQoyNmNmCjQ4MzUKMDJhMwpiOWVlCjk1MWMKMjc2Ngo3MTI2Cg==
--000000000000baa3b705eb140962
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--000000000000baa3b705eb140962--

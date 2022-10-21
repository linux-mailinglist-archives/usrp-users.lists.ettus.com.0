Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id D6BCD607DF1
	for <lists+usrp-users@lfdr.de>; Fri, 21 Oct 2022 19:50:31 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id CE2EC38151A
	for <lists+usrp-users@lfdr.de>; Fri, 21 Oct 2022 13:50:30 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1666374630; bh=NrK+3AIWBl4qY+mgI2JNYQ17fON+55o/jiGEhXz/02A=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=Go79J2P8VfdNHsataWMNpVBnkdXGqLxZnZH/StAuP5UgftqLrr9gONkGM88mniCu9
	 KBkxFKP/nr+wEBAsnZP36eIgIuM7s4Q5ddu8u2l7tp4YRfx9bshUzatFn6ak6U0Ber
	 6PC5+JEl7edcHr9nzqNrrYnUdEmtjFPG3KE921TPEJ9WF+wjssT8GjqzhQK4nz7Lyf
	 Xrl346SgwcDntde26+63KQ8XaZPG8Nlussvfjqqck5uK/0csc5z5TX6UPIPdmGVwed
	 D880Li9OB68AGBjbf+h30ANSFLyCJlZmH+0ogrQQ+sBcYfpiE80DrmClTRa1Owgv5x
	 4a97ktlowA6uQ==
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	by mm2.emwd.com (Postfix) with ESMTPS id 77ADA3810D7
	for <usrp-users@lists.ettus.com>; Fri, 21 Oct 2022 13:49:22 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=ettus-com.20210112.gappssmtp.com header.i=@ettus-com.20210112.gappssmtp.com header.b="q3ss2hy1";
	dkim-atps=neutral
Received: by mail-ed1-f54.google.com with SMTP id l22so8681638edj.5
        for <usrp-users@lists.ettus.com>; Fri, 21 Oct 2022 10:49:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ettus-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ECIl2+kybFXgTdac+Nb7VIPfyfaNdXCv9FxcTbKM1Os=;
        b=q3ss2hy1IYrOHe9lIdoJDGa2Q/xt8HrYxSX4CS9GANvXcAjv1BgYifXZIiNDZsnmLy
         H/duDQojVhnAAdoiTpjZoTGr0nL/LgQwgLtT5uzUNUrfXI+iX9FNexCImljquf0ZJxHt
         WW4YlFpe7xpNCxIye2c6KMRQCFgTi9A+QQUXezJOPao2RxxN/gli3n7s+bVo8CsDB2qg
         f2/lPTV4m8/UvPF3hq24fU8tMR8kzZD3tImrJxzPk19Gvw+DonvaN6CrWHEjOBJqGXbW
         4XpnYGqNdYRCKztDRiis41PWXg/ZMu8foF+BzKz/N4I6JloFvrVkpcQsI1LCCXIM4WxD
         9/+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ECIl2+kybFXgTdac+Nb7VIPfyfaNdXCv9FxcTbKM1Os=;
        b=XV4XhTODt7Iq1Q6L/zu22zLCeB5/bhIbahFyzc1BWTaW5z9yv/sDhA0KLoCnbc5H4i
         I2TAUUPx22vECa1xwU1aQeUY5+aR3q+A7m1AeKjBTn39aWPFSovJF645HxeH7YGS1Wa0
         CvnxqdVIDPhxVM1vnpFT1duSQTthkRJoCDVUGmid8sYSK+CI4yPP+5gLNSOCiNfYsAEd
         3fsbhLODE0abgQU3tdeRCwM21mIjSgeFHqHdbiKdi9r2DK5tfWAKBnTHruujVLjCqi+z
         mNinyQNZzjrOrLXW/WXj6usPfTQ6eey4nAuX0jYyUkExL8yP/1uA7eW+tDZKKlas8Qp2
         fuEA==
X-Gm-Message-State: ACrzQf00rq9nOZAlTP4JwnTyLP/gzdO7Lr8A/8UNBQ1Uux7+YSyQi5SN
	vSVQsvU7a+pJfXoPZZLReFJ26Co0x0WoA9IdkxVDIFlGKZqyag==
X-Google-Smtp-Source: AMsMyM62c+O3EdIiHStaQlHVvtpxkfPooOCd25hThVqK1KhBCZOxXZLcuVOlg2NPCxyZAYn0FcWdq/dH6OT5QU5p3Rg=
X-Received: by 2002:a05:6402:27c6:b0:45d:ba4d:c9cf with SMTP id
 c6-20020a05640227c600b0045dba4dc9cfmr18812699ede.17.1666374561306; Fri, 21
 Oct 2022 10:49:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PtNSw1qOgaKJbRRnUpTfn4A-zK_10frYCk7CoCo93Drhw@mail.gmail.com>
 <CAFche=hOWymQFaD9KkAjX9WSuLAPkmqJBWytMnU5+hu_-fPzEQ@mail.gmail.com> <CAA=S3PtF8Qm=FXbqzO2h-0Fazy+Gp8VL7HNbYCpHg74XjSffyg@mail.gmail.com>
In-Reply-To: <CAA=S3PtF8Qm=FXbqzO2h-0Fazy+Gp8VL7HNbYCpHg74XjSffyg@mail.gmail.com>
From: Wade Fife <wade.fife@ettus.com>
Date: Fri, 21 Oct 2022 12:49:04 -0500
Message-ID: <CAFche=i=r+vgvYCZxNySF9a7fV92RUNRXfZ6bOL2HF=3FixzaQ@mail.gmail.com>
To: sp <stackprogramer@gmail.com>
Message-ID-Hash: TGEEP5PA4LZE7ZR2KCXLLOYAYC3NZDZS
X-Message-ID-Hash: TGEEP5PA4LZE7ZR2KCXLLOYAYC3NZDZS
X-MailFrom: wade.fife@ettus.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Why initialize large array in Verilog is not successfully in RFNOC blocks...
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/TGEEP5PA4LZE7ZR2KCXLLOYAYC3NZDZS/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3570944297939810951=="

--===============3570944297939810951==
Content-Type: multipart/alternative; boundary="000000000000ca30c005eb8f0fd0"

--000000000000ca30c005eb8f0fd0
Content-Type: text/plain; charset="UTF-8"

I'm curious if it works if you change the memory size to 1024 instead of
1025 like you have now, or if you use increasing addresses instead of
decreasing. A 1025-word memory with a reversed range is unusual. But
regardless, this warning comes from Vivado, not UHD/RFNoC, so you should
probably post your question on the Vivado forum.

Wade

On Sat, Oct 15, 2022 at 10:03 AM sp <stackprogramer@gmail.com> wrote:

> Yes, it is. I attached some example file. I changed name of them in code
> but I am faced with a warning.........
> WARNING: [Synth 8-2898] ignoring malformed $readmem task: invalid memory
> name [file.sv:50]
> WARNING: [Synth 8-2898] ignoring malformed $readmem task: invalid memory
> name [file.sv:51]
> In simulation it works but i synthesis I am faced with top
> warning..........
> why in RFNOC block I faced with this error for mem files.........can any
> one guide me?
>
> On Fri, Oct 14, 2022 at 7:36 PM Wade Fife <wade.fife@ettus.com> wrote:
>
>> Does the file you're reading from have enough data in it?
>>
>> Wade
>>
>>
>> On Thu, Oct 13, 2022, 7:39 AM sp <stackprogramer@gmail.com> wrote:
>>
>>> Why initialize large array in Verilog is not successfully. When size of
>>> array is 255 it work like charm but for other number more than 255 like
>>> 1024 and ....
>>> we observe all array is filled with zero? why large array in FPGA can
>>> not initailize correctly????
>>>
>>>
>>> Code:
>>>  reg signed  [15:0]  data_i_pattern_buffer [1024:0];
>>>  reg signed  [15:0]  data_q_pattern_buffer [1024:0];
>>>   $readmemh("out_i.txt",data_i_pattern_buffer,0,1024);
>>>  $readmemh("out_q.txt",data_q_pattern_buffer,0,1024);
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--000000000000ca30c005eb8f0fd0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m curious if it works if you change the memory =
size to 1024 instead of 1025 like you have now, or if you use increasing ad=
dresses instead of decreasing. A 1025-word memory with a reversed range is =
unusual. But regardless, this warning comes from Vivado, not UHD/RFNoC, so =
you should probably post your question on the Vivado forum.</div><div><br><=
/div><div>Wade<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Sat, Oct 15, 2022 at 10:03 AM sp &lt;<a href=3D"=
mailto:stackprogramer@gmail.com">stackprogramer@gmail.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Y=
es, it is. I attached some example file. I changed name of them in code but=
 I am faced with a warning.........<br><div><span style=3D"color:rgb(29,29,=
29);font-family:&quot;Segoe UI&quot;,&quot;Helvetica Neue&quot;,Helvetica,R=
oboto,Oxygen,Ubuntu,Cantarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,=
sans-serif;font-size:15px;background-color:rgb(234,232,207)">WARNING: [Synt=
h 8-2898] ignoring malformed $readmem task: invalid memory name [<a href=3D=
"http://file.sv:50" target=3D"_blank">file.sv:50</a>]</span><br style=3D"bo=
x-sizing:border-box;color:rgb(29,29,29);font-family:&quot;Segoe UI&quot;,&q=
uot;Helvetica Neue&quot;,Helvetica,Roboto,Oxygen,Ubuntu,Cantarell,&quot;Fir=
a Sans&quot;,&quot;Droid Sans&quot;,sans-serif;font-size:15px;background-co=
lor:rgb(234,232,207)"><span style=3D"color:rgb(29,29,29);font-family:&quot;=
Segoe UI&quot;,&quot;Helvetica Neue&quot;,Helvetica,Roboto,Oxygen,Ubuntu,Ca=
ntarell,&quot;Fira Sans&quot;,&quot;Droid Sans&quot;,sans-serif;font-size:1=
5px;background-color:rgb(234,232,207)">WARNING: [Synth 8-2898] ignoring mal=
formed $readmem task: invalid memory name [<a href=3D"http://file.sv:51" ta=
rget=3D"_blank">file.sv:51</a>]</span><br></div><div>In simulation it works=
 but i synthesis I am faced with top warning..........</div><div>why in RFN=
OC block I faced with this error for mem files.........can any one guide me=
?</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Fri, Oct 14, 2022 at 7:36 PM Wade Fife &lt;<a href=3D"mailto:wade=
.fife@ettus.com" target=3D"_blank">wade.fife@ettus.com</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"auto"><di=
v>Does the file you&#39;re reading from have enough data in it?<div dir=3D"=
auto"><br></div><div dir=3D"auto">Wade</div><br><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Oct 13, 2022, 7:39 AM sp =
&lt;<a href=3D"mailto:stackprogramer@gmail.com" target=3D"_blank">stackprog=
ramer@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr">Why initialize large array in Verilog is no=
t successfully. When size of array is 255 it work like charm but for other =
number more than 255 like 1024 and ....<br>we observe all array is filled w=
ith zero? why large array in FPGA can not initailize correctly????<div><br>=
</div><div><br>Code:<br>=C2=A0reg signed =C2=A0[15:0] =C2=A0data_i_pattern_=
buffer [1024:0];<br>=C2=A0reg signed =C2=A0[15:0] =C2=A0data_q_pattern_buff=
er [1024:0];<br>=C2=A0 $readmemh(&quot;out_i.txt&quot;,data_i_pattern_buffe=
r,0,1024);<br>=C2=A0$readmemh(&quot;out_q.txt&quot;,data_q_pattern_buffer,0=
,1024);<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" re=
l=3D"noreferrer" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" rel=3D"noreferrer" target=3D"_blank">usrp-users-leave@lists.ettus.=
com</a><br>
</blockquote></div></div></div>
</blockquote></div>
</blockquote></div>

--000000000000ca30c005eb8f0fd0--

--===============3570944297939810951==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3570944297939810951==--

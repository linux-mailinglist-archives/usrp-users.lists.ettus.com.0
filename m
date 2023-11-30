Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA737FFCE0
	for <lists+usrp-users@lfdr.de>; Thu, 30 Nov 2023 21:42:27 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 8A86438512D
	for <lists+usrp-users@lfdr.de>; Thu, 30 Nov 2023 15:42:26 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1701376946; bh=Od0AQQrdcRDoRGxFl7we/7bYLk57Nqhm6KyLzlZpW6Y=;
	h=References:In-Reply-To:From:Date:Cc:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=LHW+gUh7WP7lIDFsQAsEf9WAUBIocRm/lsv/zktR23ZcdkYrRwb6vzCA/mSDZSxgZ
	 N9d7/ERM4DnInS00a/kKg7VNv939xBMOC6dwXjHvqxBRWVNSO20KpeozPq+ONF0lit
	 XPN5om1UxkOScLaec328fOthWvGENkrYVcO8NPDg4eN/HAtPznpCoMIZVaOO06TKa9
	 tqDy9eCzxzDg+5ScjO1duwT14Yk9Yu5koJ6ujPvgaJwfsc8RsgBHVTbwKVcqfIyOvq
	 T8AwArdICXA1leIW0c36pFY4so3Jq0uAuUcjhBbgpNWqmkU05yuQopmoxfcoWlKj4s
	 m0RP+YFqC//MQ==
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com [209.85.210.176])
	by mm2.emwd.com (Postfix) with ESMTPS id 894033850D9
	for <usrp-users@lists.ettus.com>; Thu, 30 Nov 2023 15:41:34 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="GBapAHh3";
	dkim-atps=neutral
Received: by mail-pf1-f176.google.com with SMTP id d2e1a72fcca58-6cbcc42e9d4so182532b3a.0
        for <usrp-users@lists.ettus.com>; Thu, 30 Nov 2023 12:41:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701376893; x=1701981693; darn=lists.ettus.com;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dcGr+6Qdy2jXHexWgJU/XRhTYRr3GT+C7YAFCgc6x6o=;
        b=GBapAHh3pjupQGw7dbeA0/l6aw4stfYzSfytPX81hvo0pXwCOdphRdKUhIkf2LKjDK
         wrc3zkzvh4TDi2f17Q1ihdfc/qMnnlQId9ofeqseWm2P5NyoQ3DmvS9ZqeDbPoxc3jfL
         +JOs+Mr4x3FQp9+Q29Ys6V2twpI7yLOG/RH4nBJM23CT8+GICuPdHccx9WF0LD8Qqqry
         02pF7eY0bpuuAajsnLlINwgDYPjKWXzZrTAO9LCVnLDmcVzfpojqXKGE0cnuAOMqLtnH
         Yk3ftXeEGCYHiz+u/lWXxX+Wmh9956lecZQr/KloN+1IiINrNT7buKD85FU4A1pzbH89
         n0CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701376893; x=1701981693;
        h=cc:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dcGr+6Qdy2jXHexWgJU/XRhTYRr3GT+C7YAFCgc6x6o=;
        b=UxNlEzVGa/5ScIwqBaCEIhZH5JkzMgJbttcS/uu7LGSyY9LmZqLvjdZqCL4yiDluJi
         w55v8yKWyUoIcAPSCS9e48jA7kjXMGKjrYNwYzy6bJcnpLZ7F9kshejSaoISOjnDDREg
         YIxXx2pNIMg3vmIoWZkUD+hhhjtahhQAr7jpyhuwHo43TBoypQdxaWEtClnrkORJsYSE
         oDgxkseLKBKjAlIuEhPUMSMQPvQ8YiO33OW2socxrx0hQ5t+eWk+eTsqinWBoi99iVjL
         uViAoQv/pdp58FJb+vRdxFpTiwA/vFC/B/W2Gf4GszW8qnO8JOAM/D4Cp471lEKmuXQM
         07Lw==
X-Gm-Message-State: AOJu0YyGW6q4KcM/1Ly/0txkJIfT4fSe2NciSLk2AllVsHf8SJTKdgdu
	8GMbRXhMS6jW0dVEHnM+YANFIGQsUP4btKXHVUpgPH7L
X-Google-Smtp-Source: AGHT+IGfZ8tVQ1gjNpLjknK7zvXz5+zjyHy+HY91ihefobx2Jqz41ewaT+xNtFQsmvtNAicVmpViE1GhngEUU8Y1ogU=
X-Received: by 2002:aa7:9812:0:b0:6cb:bbaf:2490 with SMTP id
 e18-20020aa79812000000b006cbbbaf2490mr3396359pfl.1.1701376893213; Thu, 30 Nov
 2023 12:41:33 -0800 (PST)
MIME-Version: 1.0
References: <CAM0spwqxrMJnasa4rwmhn6sMLhCTGPeaLyLcK1NYkLF=gso0JQ@mail.gmail.com>
 <37c54c57-656c-4af1-905d-ac4f2e9695a4@gmail.com>
In-Reply-To: <37c54c57-656c-4af1-905d-ac4f2e9695a4@gmail.com>
From: Ethan C <ethanclarke365@gmail.com>
Date: Thu, 30 Nov 2023 12:41:20 -0800
Message-ID: <CAM0spwo3ovfPEKYM1O2O=VtVaM-RpJWDpSNN7E7KiDWwfg9dTA@mail.gmail.com>
Cc: usrp-users@lists.ettus.com
Message-ID-Hash: 3YD6XOTSCPTH5NTFDZTVWBVJCW5RWYFT
X-Message-ID-Hash: 3YD6XOTSCPTH5NTFDZTVWBVJCW5RWYFT
X-MailFrom: ethanclarke365@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: USRP B210 fpga build error
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/3YD6XOTSCPTH5NTFDZTVWBVJCW5RWYFT/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6588851200383342076=="

--===============6588851200383342076==
Content-Type: multipart/alternative; boundary="0000000000005960d9060b64adf2"

--0000000000005960d9060b64adf2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yep that did the trick, thanks! Kind of embarrassingly simple but at least
I know for next time.

On Wed, Nov 29, 2023 at 12:55=E2=80=AFAM Marcus D. Leech <patchvonbraun@gma=
il.com>
wrote:

> On 29/11/2023 03:41, Ethan C wrote:
>
> Hello,
> I am trying to build the default B210 fpga project using Xilinx ISE just
> to confirm I can do it before investing more time in a project. I
> downloaded UHD 4.6 from the github repo and in ~uhd/fpga/usrp3/top/b200 s=
et
> up the Xilinx environment and built the fpga project
>
> source /opt/Xilinx/14.7/ISE_DS/settings64.sh
>
> make b210
>
> I get an error "python: No such file or directory" during the "Generating
> Report" part of the build like in the attached screenshots.
>
>
> I don't quite understand the python line before the error, but I assume
> it's calling check_timing.py with b200.twr as a parameter. check_timing.p=
y
> is in the expected location, not sure where build-B200//b200.twr is
> supposed to be, but there is the touch command right before so it should =
be
> in ~uhd/fpga/usrp3/top/b200.
> The USRP B210 I am using wasn't connected when building the fpga project,
> I assume that loading the new fpga project into the USRP can be done afte=
r
> building it
> I edited one file in ~uhd/fpga/usrp3/top/b200 by adding a comment so I
> guess it's not truly default.
> Is there something I'm missing or doing wrong?
>
>
> I looks like there's no program called "python" on your system.
>
> Some distros require that the user decide which of the python2 or python3
> executables should be sym-linked to "python".
>
> You probably haven't done that on your system.
>
>
>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000005960d9060b64adf2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yep that did the trick, thanks! Kind of embarrassingly sim=
ple but at least I know for next time.<br></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Nov 29, 2023 at 12:55=E2=
=80=AFAM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">pat=
chvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><u></u>

 =20
   =20
 =20
  <div>
    <div>On 29/11/2023 03:41, Ethan C wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div>Hello,</div>
        <div>I am trying to build the default B210 fpga project using
          Xilinx ISE just to confirm I can do it before investing more
          time in a project. I downloaded UHD 4.6 from the github repo
          and in ~uhd/fpga/usrp3/top/b200 set up the Xilinx environment
          and built the fpga project<br>
        </div>
        <div><br>
        </div>
        <div>
          <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bo=
ttom:0pt" id=3D"m_6389378325368316709gmail-docs-internal-guid-c87dea04-7fff=
-18ca-5c43-9536aa26ccd0"><span style=3D"font-size:11pt;font-family:Arial,sa=
ns-serif;color:rgb(0,0,0);background-color:transparent;font-weight:400;font=
-style:normal;font-variant:normal;text-decoration:none;vertical-align:basel=
ine;white-space:pre-wrap">source /opt/Xilinx/14.7/ISE_DS/settings64.sh</spa=
n></p>
          <p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bo=
ttom:0pt"><span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:=
rgb(0,0,0);background-color:transparent;font-weight:400;font-style:normal;f=
ont-variant:normal;text-decoration:none;vertical-align:baseline;white-space=
:pre-wrap">make b210</span></p>
        </div>
        <div><br>
        </div>
        <div>
          I get an error &quot;python: No such file or directory&quot; duri=
ng the
          &quot;Generating Report&quot; part of the build like in the attac=
hed
          screenshots.<br>
        </div>
        <div><br>
        </div>
        <div>
          <span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:=
rgb(0,0,0);background-color:transparent;font-weight:400;font-style:normal;f=
ont-variant:normal;text-decoration:none;vertical-align:baseline;white-space=
:pre-wrap" id=3D"m_6389378325368316709gmail-docs-internal-guid-55d71caf-7ff=
f-2e70-c00d-14a989eb9a35"><span style=3D"border:medium;display:inline-block=
;overflow:hidden;width:624px;height:287px"><img src=3D"https://lh7-us.googl=
eusercontent.com/uU7StUaany4bKX1XsOIUoNF5ETEr9QZzx5kg0UvWAc1J5tOAVDvqOEYTqO=
CiRjCEv4mAOBq4imGfIYNYMJ5zxfNIQS84vykAH1-Vd3_tSoQwfBN0Kt0Yv4V9pP4KFHpFFV94k=
0kv0e4eG07Uy2u0838" style=3D"margin-left: 0px; margin-top: 0px;" width=3D"6=
24" height=3D"287"></span></span>
          <span style=3D"font-size:11pt;font-family:Arial,sans-serif;color:=
rgb(0,0,0);background-color:transparent;font-weight:400;font-style:normal;f=
ont-variant:normal;text-decoration:none;vertical-align:baseline;white-space=
:pre-wrap" id=3D"m_6389378325368316709gmail-docs-internal-guid-e206eb34-7ff=
f-3eef-0bb6-8717453288a4"><span style=3D"border:medium;display:inline-block=
;overflow:hidden;width:624px;height:287px"><img src=3D"https://lh7-us.googl=
eusercontent.com/5NV4TpD7ZNhwzHxYIkYYHqpgcCkJNcUqxGcxEkLznTSBpulPTikRpMteoC=
Z0ynLQbHLrQNxWHrM9eFXfWygcGTj2oW2y95kG1nm_2kyrJPwlpFCP8IJq3m84XPVKGOBpxtZQ_=
LqqX7f-fFYdTAMqryE" style=3D"margin-left: 0px; margin-top: 0px;" width=3D"6=
24" height=3D"287">
</span></span></div>
        <div><br>
        </div>
        <div>I don&#39;t quite understand the python line before the error,
          but I assume it&#39;s calling check_timing.py with b200.twr as a
          parameter. check_timing.py is in the expected location, not
          sure where build-B200//b200.twr is supposed to be, but there
          is the touch command right before so it should be in
          ~uhd/fpga/usrp3/top/b200.</div>
        <div>
          The USRP B210 I am using wasn&#39;t connected when building the
          fpga project, I assume that loading the new fpga project into
          the USRP can be done after building it</div>
        <div>I edited one file in ~uhd/fpga/usrp3/top/b200 by adding a
          comment so I guess it&#39;s not truly default.</div>
        <div>Is there something I&#39;m missing or doing wrong?<br>
        </div>
      </div>
      <br>
      <br>
    </blockquote>
    I looks like there&#39;s no program called &quot;python&quot; on your s=
ystem.<br>
    <br>
    Some distros require that the user decide which of the python2 or
    python3 executables should be sym-linked to &quot;python&quot;.<br>
    <br>
    You probably haven&#39;t done that on your system.<br>
    <br>
    <br>
    <br>
  </div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000005960d9060b64adf2--

--===============6588851200383342076==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6588851200383342076==--

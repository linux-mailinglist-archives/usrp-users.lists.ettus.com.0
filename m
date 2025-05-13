Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7EFAB57BB
	for <lists+usrp-users@lfdr.de>; Tue, 13 May 2025 16:56:36 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 6B67C385DA7
	for <lists+usrp-users@lfdr.de>; Tue, 13 May 2025 10:56:35 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1747148195; bh=uPjG2igISjzDHkSZMQK/WyvY/EbF3bcL1bsJwtESLYU=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=wH8t258UqWnzPlD73Nh/Jpr9JDzg4levWk5mDqU9aCWn8xl+hHlV7dDI7W0tH26+Q
	 LPDM1KOqBHm85Em6uQIw8LFLHflJpVMDq3a1oNiBBxDCUFxPWBh1w/Bq4RBVHTLlNY
	 MrEsQkmiywLSxw9/d8xnMqnlRm0bCac5t1q/636UANlqF/Bnn4qvpowl0F9MSxvL+h
	 70sr03IJoY63SpP456t3u77IC0FtcMaKoYI1DCT1LFQEAw8GQj/Gt1juFPro2xP44e
	 gub8we/2ZLjXjrVA95qCpNETqNGPjYd3Ko2DVD35tCYmq05JaKnHE4xA+fphK3CVX6
	 JJzxD5T/cr7/Q==
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	by mm2.emwd.com (Postfix) with ESMTPS id E004B385ACB
	for <usrp-users@lists.ettus.com>; Tue, 13 May 2025 10:55:55 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="ck7zE8lP";
	dkim-atps=neutral
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-30de488cf81so57075921fa.1
        for <usrp-users@lists.ettus.com>; Tue, 13 May 2025 07:55:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747148154; x=1747752954; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=wdZ3GUwrYA72hapI6wz5t7aVK6j9AFYd8Qf77nvCMkM=;
        b=ck7zE8lPUHcdda3UnxHEhQMsGX7/2Dkvopz6pyLF+1ctl20plg8k8R760S5M/oZ51W
         vumN3E4i2SxrnLNItugmr/I2MzbSvXPou7NvgB1XNTWGUhgcyWqP1T4hzvV3LI2/vPy3
         ftVpOEJTrbjVtCHwL7rTtMhcZhA7qLCR+ub35CO1ogH4ouChHvqopB54372Ye0IPQ8Es
         scJLwtmEcLVvhDDOqD+e2ZV84Kk8BxNCWamgLYu1d7BVMbANwbN4do2fHDugN5+Jf3C4
         3qlwjhisxdoeSjOToKCWBKrY04/TbVD/eVuXeFoiFgIcuUCtGu6asAGW9erhGMC69OQQ
         hT8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747148154; x=1747752954;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wdZ3GUwrYA72hapI6wz5t7aVK6j9AFYd8Qf77nvCMkM=;
        b=AUQb+yNTRmPIaczYxTcltYdAofUsoJNidKyr440tAyK6Q5VFOXrCaNTu5ipElb+BKv
         8CQgI4/lwlZ/50dt8Inj5q4+bYLQZlRo92/0DTU0XUk/xch/Gf9j5VzQG2mp3ipZrJLN
         eH1qS5U0XYG5bwCO66V43qQy8rGovbw9FjbRPxlgBkTOwbMcXzDCnQIxYcr++Cp9rxT8
         4VOM2XvnwEG/FI/L/YBkGAWyzIvJaxT1ByD+Q4oZdWk+6HExfmSkwB7W6BorCp0cSexb
         o6yCqcwtORQtsRtbrNWq+0tX9ugOHir6ocStsqfD1kRPfFdI+DOpqiJ2Z7UF2TOZJVkp
         IOsQ==
X-Gm-Message-State: AOJu0YzaVgGv2ctrD/DsuwCreeYDQI5+e7RMg9WLuhvCf1TOaC2efZ5E
	rM1DB7frP/cO6o5z0mhrKu77Z9Mab48cFv0ZaV1pV5lGjL2ZH5xxPSmtEIHWpsOUddYIb7Y+jBU
	i+xLhwXPPUDXeosIwL8yNjhkURHg=
X-Gm-Gg: ASbGnctiQbR7K3vqBVftXZRMzqtXSHz6ZRWMbkmFS4wreNnAOloNWRPqSy6lETKACKh
	MGNmSgJr38jLjm19j8AAer3kbX3yyDbt9eexmJvUNV8wtpK4IC6QRj6GmWgQf4JLUwuYDa7ir2t
	qn3dJgulF8hqsVpbh4zZKBofJ/T9KS2A==
X-Google-Smtp-Source: AGHT+IHdP6Skn1xafIqIPXOCS/i4LWpkRQqrZ1QHMY9jUgrfSyUbmd2HhvNSAPTVzauEMervtc38mFpmwN2BDHLbaF4=
X-Received: by 2002:a2e:be89:0:b0:30b:d022:2fd4 with SMTP id
 38308e7fff4ca-326c4673994mr73912221fa.30.1747148154089; Tue, 13 May 2025
 07:55:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3Puk1XCw+=7i_27zSWD9t9HGg+-RFajRyySLM6pvqeLBpQ@mail.gmail.com>
 <CAEXYVK6saxCjJZ5dO_2e6LK=+xndh-YVCnfW0uqG3MW6hrBNxA@mail.gmail.com>
In-Reply-To: <CAEXYVK6saxCjJZ5dO_2e6LK=+xndh-YVCnfW0uqG3MW6hrBNxA@mail.gmail.com>
From: sp <stackprogramer@gmail.com>
Date: Tue, 13 May 2025 18:25:41 +0330
X-Gm-Features: AX0GCFuEdVppK4EaiJthOT-3-WNuTtKVSSyslrKuMZ0wUbUl7n0E7SD7Nt5eVa4
Message-ID: <CAA=S3PvxTQz6mQ_gskqzsdSV0f7CA5_N1Xg-df39dc3ECjPVcg@mail.gmail.com>
To: Brian Padalino <bpadalino@gmail.com>
Message-ID-Hash: WNKL5SUWVS2T332SXOCMX2NRI6FGDDEF
X-Message-ID-Hash: WNKL5SUWVS2T332SXOCMX2NRI6FGDDEF
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Is it possible to set sps radio core 1mhz or lower sps without using ddc (RFNOC block)
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/WNKL5SUWVS2T332SXOCMX2NRI6FGDDEF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3902879147449645071=="

--===============3902879147449645071==
Content-Type: multipart/alternative; boundary="00000000000018352e063505a168"

--00000000000018352e063505a168
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for giving useful information. Reason for i want to remove ddc in my
FPGA image core, Really I have a USRP X300, I want to add a custom RFNOC
block that it needs very much resources such a BRAM or others on FPGA USRP
X300. I emphasize I don't afford to buy a new USRP x310 or X400. So I have
to write more optimized code!

On Tue, May 13, 2025 at 4:17=E2=80=AFPM Brian Padalino <bpadalino@gmail.com=
> wrote:

> On Tue, May 13, 2025 at 4:34=E2=80=AFAM sp <stackprogramer@gmail.com> wro=
te:
>
>> In RFNOC block i need set sps a muliplay of master clock but not need
>> high sps. I need low sps but I want to not use any ddc block in my usrp
>> fpga image? Is it possible ? Can anyone  guide me? Thanks in advance
>>
>
> No. The radio sample rates are fixed to the master clock rate.
>
> Any type of sample rate conversion needs to be done digitally. This is
> typically done with the DUC or DDC. You could write your own block to do =
it
> if you wanted, but it needs to just do the same thing the DUC or DDC does=
.
>
> Why can't you use the DDC in your design?
>
> Brian
>

--00000000000018352e063505a168
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for giving useful information. Reason for i want to=
 remove ddc in my FPGA image core, Really I have a USRP X300, I want to add=
 a custom RFNOC block that it needs very much resources such a BRAM or othe=
rs on FPGA USRP X300. I emphasize I don&#39;t afford to buy a new USRP x310=
 or X400. So I have to write more optimized code!</div><br><div class=3D"gm=
ail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On T=
ue, May 13, 2025 at 4:17=E2=80=AFPM Brian Padalino &lt;<a href=3D"mailto:bp=
adalino@gmail.com">bpadalino@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">On =
Tue, May 13, 2025 at 4:34=E2=80=AFAM sp &lt;<a href=3D"mailto:stackprograme=
r@gmail.com" target=3D"_blank">stackprogramer@gmail.com</a>&gt; wrote:</div=
><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"auto">In RFNOC block i need set sps a muliplay of master clo=
ck but not need high sps. I need low sps but I want to not use any ddc bloc=
k in my usrp fpga image? Is it possible ? Can anyone=C2=A0 guide me? Thanks=
 in advance</div></blockquote><div><br></div><div>No. The radio sample rate=
s are fixed to the master clock rate.</div><div><br></div><div>Any type of =
sample rate conversion needs to be done digitally. This is typically done w=
ith the DUC or DDC. You could write your own block to do it if you wanted, =
but it needs to just do the same thing the DUC or DDC does.</div><div><br><=
/div><div>Why can&#39;t you use the DDC in your design?</div><div><br></div=
><div>Brian</div></div></div>
</blockquote></div>

--00000000000018352e063505a168--

--===============3902879147449645071==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3902879147449645071==--

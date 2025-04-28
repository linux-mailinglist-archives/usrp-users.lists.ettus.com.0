Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A65A9F18E
	for <lists+usrp-users@lfdr.de>; Mon, 28 Apr 2025 14:57:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id B7E4D385F9E
	for <lists+usrp-users@lfdr.de>; Mon, 28 Apr 2025 08:57:53 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1745845073; bh=Zg1RVbnI7oP82zIO7oUd7TPbUrtE/vPfKEks1PAlxUU=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=LOd99idgfB6I1JUggWSuSuMStakUq4R658DAZBn5gwOjz3iK32+3CMiZmLZT+5bKW
	 1MNXjWSAYeFOPUwUPFahClAJxmjTJyP8GZtEmVoAOx5wXxJMv3bq2auH2zWhpyZgIB
	 k4aUo69mIuZHZXzQRzD9kD+b3pCuDTvJ3btzRQxeQwpTEORBP8vW6AX4sXl1gjZk79
	 7NoUo+cbj2CQuWOKZ6KLR0r5ojE849LmLxFYv7bJjTytucKMWh0GkQ5mGPcKQzM4gl
	 2eCMxNA4uES1SE299lyzzKlBM3xM84l04/2xTvPHVSRCb6qiScPVlbkeds3/pe8f7W
	 c+3oogUTXlmnQ==
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	by mm2.emwd.com (Postfix) with ESMTPS id 6EDA4385F09
	for <usrp-users@lists.ettus.com>; Mon, 28 Apr 2025 08:56:58 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="mGsnOCMe";
	dkim-atps=neutral
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-ac289147833so841628866b.2
        for <usrp-users@lists.ettus.com>; Mon, 28 Apr 2025 05:56:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745845017; x=1746449817; darn=lists.ettus.com;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=z1CS4/FvdFOFM0dW/L9d+eWUq7gOAEj2OSpcObFj9Ns=;
        b=mGsnOCMeaBsgogrI0DWPcXbj2RfmMPHubkBDzKj2280X3uggocvcsgCWuuaQnrSHvu
         Px+phRA5B9cE2uNSPGK0rYU8G18iJFqvLqSpkO+2Y8O1/I7DYSRYxlr1GmCI9y1ww5nF
         W3an9eF/fg7bT6223ein9j9w9eqrcUNVC6YosMfxO2sraqeO6wgHEQGsXmYON+jiOOTV
         McU32/hlV7fSCafT+c8O9kc+oLfszvV19zLVPAljNs63+hA4DLtHA1vNel3IE7qNPHc1
         IZnLTh6MfjUupXK010ueIm33oqzkI9UJJx+TKUk1NifHc9vxSqWeu32JS9kDfmPrUhow
         xV0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745845017; x=1746449817;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z1CS4/FvdFOFM0dW/L9d+eWUq7gOAEj2OSpcObFj9Ns=;
        b=BefWWakFfmQFdWuzGrUCWr+N5WPGDvaH5+PdUhvjD48mvF6fLg8oLazw82AYh9r1TU
         xSfMmxeRIt3jtmGbR2o4AV0TJawWtyCg61aMIxKZWO9+B2UGbsd6SBWpGDGQ76LDuU9i
         ArU/Te7CO1WNnn+ixAqSonSLt2zFwr3qmSP7kOb0Zn5zzJXOysLQye8Ifyy8sHc27ow3
         /UrXaKiH7/RwyQ4UCD2aGTD32S2Coc7X992n+L+760INVKqDdRAme+pH5SqPffx6lpoH
         56TUL+dCbJvG/jLWhzMCGd95a8Y/vyIaPBPFh2V7HiFWJK+NpLWrx0BhXZ7HK3ZxCcii
         oGLA==
X-Gm-Message-State: AOJu0YxYweKTVHbn5Q6epE0Q7SEmcwqvnmXPj7ZasGeTHf6HTJVZTcwL
	Tfao4sPDh8zdyZmAD4eZv3f3bU/IUo8UVYmJ01HYQQ+5bnWOWsZkXx9sBZRlDbtsMG9/x4l7hjz
	QQ3r9x3J/+36Z14EDvPd8beNem2U=
X-Gm-Gg: ASbGncsTyAVljZnPAYfEzSXXbJ/0c/vHe5h6ORJLz9CdBrJjlr0aTQ0d75+dHe7GzkQ
	3a/sC7ik5ezdZvtc2+wHhB4J8OZcWZT8DIKRP25l8HwrYfmLfiZLj7mYA6AUk3wPtxD0oarGvv9
	Xd3kavRDuL/wjNs3lLXhyUSw==
X-Google-Smtp-Source: AGHT+IG5kO6RfbIu33SJMes/QUKTqrz6hsmXgqAmUx8eO+iuQh6c7COspjwUlzFbTMAsWG1dOJnmVoQJfwigJkLfZc8=
X-Received: by 2002:a17:907:3e95:b0:ac3:49f0:4d10 with SMTP id
 a640c23a62f3a-ace84aacb5fmr709725866b.38.1745845016151; Mon, 28 Apr 2025
 05:56:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAEXYVK4_EZt1CN7eic+zX89q_UM9xkLRrgDYOfQgAJa-vxgkEA@mail.gmail.com>
 <CAFche=hXaVLyqJA7Ay7k8NqnVaKyWni1h7JwapVwue2iwAM5MA@mail.gmail.com>
 <CAEXYVK5W_kupokFpwQY+GpwEUO1nN4Y0cH6Bhj8z1HFMYP54uw@mail.gmail.com> <CAFche=iRsVwbop=mzORPq9HoOwFkMc-uBkaEYocerg9Es+QXrQ@mail.gmail.com>
In-Reply-To: <CAFche=iRsVwbop=mzORPq9HoOwFkMc-uBkaEYocerg9Es+QXrQ@mail.gmail.com>
From: Brian Padalino <bpadalino@gmail.com>
Date: Mon, 28 Apr 2025 08:56:45 -0400
X-Gm-Features: ATxdqUH5SAYcjoLh8owvCkoaS5KXc_H1WCH_A50hZ1OTovaMahzkip-g1tJmhk8
Message-ID: <CAEXYVK6S7adZNCzgVd124OyHJd8erXqUQZxNcODdn_WdQLiNZg@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: QMBPS5TSH4HMJ3VXXXWUSMIIUYEPSE2F
X-Message-ID-Hash: QMBPS5TSH4HMJ3VXXXWUSMIIUYEPSE2F
X-MailFrom: bpadalino@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "USRP-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNoC CHDR DstEPID and Virtual Channels Clarification
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QMBPS5TSH4HMJ3VXXXWUSMIIUYEPSE2F/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6447028016553714461=="

--===============6447028016553714461==
Content-Type: multipart/alternative; boundary="000000000000054c5c0633d6387d"

--000000000000054c5c0633d6387d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 28, 2025 at 8:47=E2=80=AFAM Wade Fife <wade.fife@ettus.com> wro=
te:

> Right, up to 64 VCs per stream endpoint.
>
> Each stream endpoint only supports a single sequence number counter, so
> that single counter would be shared by all virtual channels.
>

Thanks for the clarification on this.

From your perspective, what is the feasibility of having 1024 individual
endpoints in a system?

Thanks,
Brian

>

--000000000000054c5c0633d6387d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, Apr 28, 2025 at 8:47=E2=80=AFAM W=
ade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com">wade.fife@ettus.com</a>=
&gt; wrote:</div><div class=3D"gmail_quote gmail_quote_container"><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Right, up to=
 64 VCs per stream endpoint.</div><div><br></div><div>Each stream endpoint =
only supports a single sequence number counter, so that single counter woul=
d be shared by all virtual channels.</div></div></blockquote><div><br></div=
><div>Thanks for the clarification on this.</div><div><br></div><div>From y=
our perspective, what is the feasibility of having 1024 individual endpoint=
s in a system?</div><div><br></div><div>Thanks,</div><div>Brian</div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1=
px solid rgb(204,204,204);padding-left:1ex"><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex">
</blockquote></div>
</blockquote></div></div>

--000000000000054c5c0633d6387d--

--===============6447028016553714461==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============6447028016553714461==--

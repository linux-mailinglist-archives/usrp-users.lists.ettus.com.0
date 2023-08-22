Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id A86687839BA
	for <lists+usrp-users@lfdr.de>; Tue, 22 Aug 2023 08:06:44 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BE21C3849DC
	for <lists+usrp-users@lfdr.de>; Tue, 22 Aug 2023 02:06:43 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692684403; bh=sXNWCrjhxsVzDaFZ+zp8fbqHz/Rh+rQNCSAyC3cTHH4=;
	h=References:In-Reply-To:From:Date:To:Subject:List-Id:List-Archive:
	 List-Help:List-Owner:List-Post:List-Subscribe:List-Unsubscribe:
	 From;
	b=Dvx8Q79ygi2f6Z7QyqzjqX+yGvXLko93wVBbDduDEBXG8o3fUPq833/b7/ntic4x/
	 97+5Py/ruon9YSOGnkX6H0RicF+4RxQM+NghBfDBWb0Ha+iTdi9kIENd6urczDGc1t
	 aLQTi7Zb8xlJ5S3CttAFN7OOySML6WtTmNqPU5UpTKElp3wlEgVaYrmOlu5vulVkUv
	 RCvo5kgz0H6rL3whB4LYRvsXjiZXfaXvVu+5EqVvWo59XoP3+/8CgNVE5Uk3J85Qgo
	 PvqG2sqKn9M07fCRWmLTjaTNuHzDxlS6TtYBSCpuUkCtkSDZhLR6y6Yn1cC3qnpiqn
	 SNndqunD/oqiQ==
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	by mm2.emwd.com (Postfix) with ESMTPS id 36795384809
	for <usrp-users@lists.ettus.com>; Tue, 22 Aug 2023 02:06:12 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="NvNqFXhV";
	dkim-atps=neutral
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5231410ab27so5136374a12.0
        for <usrp-users@lists.ettus.com>; Mon, 21 Aug 2023 23:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692684372; x=1693289172;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hCKMTDT0qpICWn6UizqJs6UC0nnYUy1ATotCZYd8Hpo=;
        b=NvNqFXhVCNbe3y9IjEnNQXa+NOlSkD8S05rYPRqcTgXgTrYbuBJmAWr0TB87drx8RT
         ENJTrGykSTLavQLQkSpEiCpvyISsHN/KIgMtVQFho/UpFjF44bJmpT5kSaKvr5dnrozS
         BUUq8IunpQ06reo3ssA33w912fgHcn60fjhcMjCa+s+Kr10JxwhitGtlGEQC1K1gMNtI
         tRzYllGxh9/Uyq3Tq/5xIGESRciM7OhmkAUmciXi1hbFd40wsus1Qf0Kbx7tccVUShJW
         3b6/5BvThpYUmQdqYR1N/DSAnq3mmtkGMG19f3r7DvBQxHrTdW35cQWIhXQvFyzXUyMq
         7S/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692684372; x=1693289172;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hCKMTDT0qpICWn6UizqJs6UC0nnYUy1ATotCZYd8Hpo=;
        b=lKxoRTV4VIdnjrrScAvDUjAQYHOErtPfjqPtaOgXCOH2Add/nPHQOPQtpgUaTDrIFS
         FwbNoXPF+TrC/wFlyNqMIbPTTD7Gp2pie0vzrgHK98JeqsBBFFXe3CbRLJQVpQu2zO+/
         ZHrpA6xS1ssxk1rhF4bStbjfWmQG5ZgL7IcsJ1iszPykHJ78npCaj6MBsIfJKeykYsz4
         oec/TmzjnaPfI3mTRzCuQSApppt5n8eoDTHHH9H6RG4kWy5nO18hzLocQKlhREYddqDo
         pUqkQXCyZ6NgR+FwP604MsH3/MlRKGv5WuXT5kvnElBaFc6oxIwsOAmVVuJvAbbXNqWm
         fbEA==
X-Gm-Message-State: AOJu0YxAYa97nfpfbzfBO93ou62JJqysn0B2KO7+DhRF4Ma7zUNv9cHf
	VdRasO36JH7FQNh3F7wACBmF6Gdv3mByHTsH8nNmndE=
X-Google-Smtp-Source: AGHT+IGRY9iSnQBvGawgD3LPaq4AqRhnQo0Yl9nkDeCuD7sB9aqOWL21mJGk2YvV/LLLa5I78GdfOvg3ciXv7vIBoFg=
X-Received: by 2002:aa7:c414:0:b0:528:88e2:7fec with SMTP id
 j20-20020aa7c414000000b0052888e27fecmr6550270edq.2.1692684371663; Mon, 21 Aug
 2023 23:06:11 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PtAdQH3Ujd1X_rMwxAxL1EnaK-Xp-e=Z9ZRxjV7kKT3+A@mail.gmail.com>
 <CALooG3_i7y+2=FDf_tX1sQh+LBWJpf17Zbwea=nQPOUo+Q8g8g@mail.gmail.com> <CAA=S3PunNfLB6EwzKekn4jJtgag3hWTmMVD+RFTxSBwNhNV8Lw@mail.gmail.com>
In-Reply-To: <CAA=S3PunNfLB6EwzKekn4jJtgag3hWTmMVD+RFTxSBwNhNV8Lw@mail.gmail.com>
From: =?UTF-8?B?WWFzaXIgw5Z6w6dhbMSxaw==?= <simultaneous11@gmail.com>
Date: Tue, 22 Aug 2023 09:06:00 +0300
Message-ID: <CALooG38-ErGr4N1sMgx7K3yn9M9qryLdPhGVz859NUA4Oa+3yg@mail.gmail.com>
To: sp <stackprogramer@gmail.com>, usrp-users <usrp-users@lists.ettus.com>
Message-ID-Hash: QBTYQE3DJ67VX5P56UZRYXV4XXA27PH6
X-Message-ID-Hash: QBTYQE3DJ67VX5P56UZRYXV4XXA27PH6
X-MailFrom: simultaneous11@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: why $diplay function is not work in my custom rfnoc block but
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/QBTYQE3DJ67VX5P56UZRYXV4XXA27PH6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============3165796014093557211=="

--===============3165796014093557211==
Content-Type: multipart/alternative; boundary="000000000000b09f9706037cca7f"

--000000000000b09f9706037cca7f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You need to use it inside a initial begin block.

initial begin
  $display("This ends with a new line ");
end

If you write like this, it will work. But don't forget that the $display
function is only used for simulation, but not synthesis. Therefore; it is
best to use it in testbench files.

Kind Regards,
Yasir

sp <stackprogramer@gmail.com>, 22 A=C4=9Fu 2023 Sal, 08:48 tarihinde =C5=9F=
unu yazd=C4=B1:

> Thanks very much, simulation test bench sv file works but when I used
> $display in the custom rfnoc block verilog module it have an error
> I attached the source file of custom block
>
> First problem:
> I have this error when I used $diplay system verilog (system task)
>
> ERROR: [VRFC 10-4982] syntax error near '$display'
> [/home/sp/rfnoc-test/rfnoc/fpga/rfnoc_block_gain/rfnoc_block_gain.v:222]
> ERROR: [VRFC 10-2865] module 'rfnoc_block_gain' ignored due to previous
> errors
> [/home/sp/rfnoc-test/rfnoc/fpga/rfnoc_block_gain/rfnoc_block_gain.v:40]
>
>
>
>
> On Tue, Aug 22, 2023 at 9:45=E2=80=AFAM Yasir =C3=96z=C3=A7al=C4=B1k <sim=
ultaneous11@gmail.com>
> wrote:
>
>> Just to be clear, you mean $display function, right? If so, I have used
>> it in my custom rfnoc block for simulation and it worked flawlessly. Can
>> you give a little more detail about your code?
>>
>> sp <stackprogramer@gmail.com>, 22 A=C4=9Fu 2023 Sal, 08:01 tarihinde =C5=
=9Funu
>> yazd=C4=B1:
>>
>>> why $diplay function is not work in my custom rfnoc block but it work i=
n
>>> other rfnoc blocks on usrp,
>>> How can solve my problem?
>>> I know that with rfnoc framework $diplay should be work in rfnoc blocks
>>> but....
>>> every thing is same other block only name of block is diff...
>>> thanks in advance
>>> _______________________________________________
>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>
>>

--000000000000b09f9706037cca7f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">You need to use it inside a initial begin block.<div><br><=
/div><div>initial begin</div><div>=C2=A0 $display(&quot;This ends with a ne=
w line &quot;);</div><div>end</div><div><br></div><div>If you write like th=
is, it will work. But don&#39;t forget that the $display function is only u=
sed for simulation, but not synthesis. Therefore; it is best to use it in t=
estbench files.</div><div><br></div><div>Kind Regards,</div><div>Yasir</div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>sp &lt;<a href=3D"mailto:stackprogramer@gmail.com">stackprogramer@gmail.co=
m</a>&gt;, 22 A=C4=9Fu 2023 Sal, 08:48 tarihinde =C5=9Funu yazd=C4=B1:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><di=
v dir=3D"ltr">Thanks very much, simulation test bench sv file works but whe=
n I used $display in the custom rfnoc block verilog module it have an error=
</div><div>I attached=C2=A0the source file of custom block</div><div dir=3D=
"ltr"><br></div><div dir=3D"ltr">First problem:<br><div>I have this error w=
hen I used $diplay system verilog (system task)</div><div><br></div><div>ER=
ROR: [VRFC 10-4982] syntax error near &#39;$display&#39; [/home/sp/rfnoc-te=
st/rfnoc/fpga/rfnoc_block_gain/rfnoc_block_gain.v:222]<br>ERROR: [VRFC 10-2=
865] module &#39;rfnoc_block_gain&#39; ignored due to previous errors [/hom=
e/sp/rfnoc-test/rfnoc/fpga/rfnoc_block_gain/rfnoc_block_gain.v:40]<br></div=
><div><br></div><div><br></div><div><br></div></div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 22, 2023 at=
 9:45=E2=80=AFAM Yasir =C3=96z=C3=A7al=C4=B1k &lt;<a href=3D"mailto:simulta=
neous11@gmail.com" target=3D"_blank">simultaneous11@gmail.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"lt=
r">Just to be clear, you mean $display function, right? If so, I have used =
it in my custom rfnoc block for simulation and it worked flawlessly. Can yo=
u give a little more detail about your code?</div><br><div class=3D"gmail_q=
uote"><div dir=3D"ltr" class=3D"gmail_attr">sp &lt;<a href=3D"mailto:stackp=
rogramer@gmail.com" target=3D"_blank">stackprogramer@gmail.com</a>&gt;, 22 =
A=C4=9Fu 2023 Sal, 08:01 tarihinde =C5=9Funu yazd=C4=B1:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">why $diplay funct=
ion is not work in my custom rfnoc block but it work in other rfnoc blocks =
on usrp,<br><div>How can solve my=C2=A0problem?</div><div>I know that with =
rfnoc framework $diplay should be work in rfnoc blocks but....</div><div>ev=
ery thing is same other block only name of block is diff...</div><div>thank=
s in advance=C2=A0<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000b09f9706037cca7f--

--===============3165796014093557211==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============3165796014093557211==--

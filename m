Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id DAC207839D9
	for <lists+usrp-users@lfdr.de>; Tue, 22 Aug 2023 08:21:40 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id D23BA380048
	for <lists+usrp-users@lfdr.de>; Tue, 22 Aug 2023 02:21:39 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1692685299; bh=cRTxAa8Dp5wGJ8OhDTkMA4gWg9E5OhuG46cV5lsDD+I=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=oxcK3r+yXx6aL+rpEQGdoVANNju+Eu/EIg36g0aaKunOwXMoRdpDUjl7OOwXXdCqO
	 9JYWu5xu4nJ0f0mtjxPnlCRFUQ7l9WPb1VlEpFDp4C8D2N5H04C3UADLRwIerjb4f6
	 0PNVytWlhkQKq449B1jyjBwfMzeTnaJFRLgWHMBNdACJv26NkXdpFqpiQTIqMb91py
	 SHFec5d0jnPdY3qHpYKuF8uzWkFaJVsLcJ3l5NegjMRCkpDjzgACBSKnEJHrkD1INW
	 n7sDSgw/oizRiPxwpacSShRKwzfQF18Lep0zOrvXMwjU9x2SQzN96D1tI0Ui1gnnQm
	 40qvKKGnmD89Q==
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
	by mm2.emwd.com (Postfix) with ESMTPS id 97E4B384809
	for <usrp-users@lists.ettus.com>; Tue, 22 Aug 2023 02:21:08 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="LgJzjQgw";
	dkim-atps=neutral
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-79d8edd6d99so1421639241.3
        for <usrp-users@lists.ettus.com>; Mon, 21 Aug 2023 23:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692685268; x=1693290068;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qvhvLh6dlO1vCymYFmxscg1g9AB6T3bxLu0IFD90uQI=;
        b=LgJzjQgwCm+Mr/fDMeqbRfRC2rnPl4pFtKr16fapENjvf7jzfS8KMu+AIG3X0KN+fF
         R7AX4w62V8cww5QfPwgPUsTqW8FHChlqA8xKB8Km0wp9a6+sqOxn5cRpLhgyoG9ThVgH
         zHlgw1OZVN7+XQsSrTZ2v0bRaAnVodKQ4FcTWmmoDICjzXZlvxLT+IUImdQZQAi241WN
         7Yz65gJCxzGgQjWHBIY3+2V7C3RXWAb5Wi69qw44q8h9cePigYbwbCAs5aJIGB35xgMZ
         hTmqTaPJ5E3x8xFbxRWd+FOYMAGmtjbnnL48toqC2smm5sniM2B+QQaN6LjpGnxHSGUF
         roAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692685268; x=1693290068;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qvhvLh6dlO1vCymYFmxscg1g9AB6T3bxLu0IFD90uQI=;
        b=RGlBvL2FqSPXYZDXiBR/hD37JK+AYWuNOmQwzDv1N+ATqNdOPZUWHjueQAbctRuSy3
         WMDj1Z4+fYK+BeVkEiLlX5UN37qVwDm0PJh4c/MZmwMM1KwE+VI6eXWkxbc5P47P6kEZ
         Gt4hnqv3OJhgaVdrDtaI/8iNJRCigdR24xWjPIyPIUh7NnOwi1kgzgncNAHPCFwjdjkh
         IaWmKeWPRAirQH3lDtRnUIcoed5m1MGiconFiLzcrTGEZ619WFYteigC14TVMk053QqL
         Ort0pFF1I3IIS/tLki87RDKPZDzGarUMUzZrJpDAwtvMnNxt+xHGf1g2Rm/e4LpioH7U
         y3KA==
X-Gm-Message-State: AOJu0YyEdgw1wGfJzMDt7HPbPKljWXoVMQhnNWm/U1eOrBEsC7BfSOIg
	eun60Fhv1b4kCTY//O04JUsQ8gBClYKXECItSMEBWWjedUU=
X-Google-Smtp-Source: AGHT+IF7gybDEbEW4OmXaxlGmsDm4Xouu78R2p98EHzdXYZ9+OavZzzQs32v5L6rphCnKlICoR0vdHvzkhQKEr/KIhY=
X-Received: by 2002:a1f:4841:0:b0:48d:5de:3061 with SMTP id
 v62-20020a1f4841000000b0048d05de3061mr6048350vka.13.1692685267699; Mon, 21
 Aug 2023 23:21:07 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PtAdQH3Ujd1X_rMwxAxL1EnaK-Xp-e=Z9ZRxjV7kKT3+A@mail.gmail.com>
 <CALooG3_i7y+2=FDf_tX1sQh+LBWJpf17Zbwea=nQPOUo+Q8g8g@mail.gmail.com>
 <CAA=S3PunNfLB6EwzKekn4jJtgag3hWTmMVD+RFTxSBwNhNV8Lw@mail.gmail.com> <CALooG38-ErGr4N1sMgx7K3yn9M9qryLdPhGVz859NUA4Oa+3yg@mail.gmail.com>
In-Reply-To: <CALooG38-ErGr4N1sMgx7K3yn9M9qryLdPhGVz859NUA4Oa+3yg@mail.gmail.com>
From: sp <stackprogramer@gmail.com>
Date: Tue, 22 Aug 2023 10:50:56 +0430
Message-ID: <CAA=S3PteN4h-aRMqiqh4nfhG41wnihR7DL52xCcKqDwYDxnrrg@mail.gmail.com>
To: =?UTF-8?B?WWFzaXIgw5Z6w6dhbMSxaw==?= <simultaneous11@gmail.com>
Message-ID-Hash: U43KALBKXSR3BABZONLSZOEVZUFJPTQD
X-Message-ID-Hash: U43KALBKXSR3BABZONLSZOEVZUFJPTQD
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: why $diplay function is not work in my custom rfnoc block but
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/U43KALBKXSR3BABZONLSZOEVZUFJPTQD/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============2991475021539639613=="

--===============2991475021539639613==
Content-Type: multipart/alternative; boundary="000000000000190d4d06037d0026"

--000000000000190d4d06037d0026
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for your explanation.

On Tue, Aug 22, 2023 at 10:36=E2=80=AFAM Yasir =C3=96z=C3=A7al=C4=B1k <simu=
ltaneous11@gmail.com>
wrote:

> You need to use it inside a initial begin block.
>
> initial begin
>   $display("This ends with a new line ");
> end
>
> If you write like this, it will work. But don't forget that the $display
> function is only used for simulation, but not synthesis. Therefore; it is
> best to use it in testbench files.
>
> Kind Regards,
> Yasir
>
> sp <stackprogramer@gmail.com>, 22 A=C4=9Fu 2023 Sal, 08:48 tarihinde =C5=
=9Funu
> yazd=C4=B1:
>
>> Thanks very much, simulation test bench sv file works but when I used
>> $display in the custom rfnoc block verilog module it have an error
>> I attached the source file of custom block
>>
>> First problem:
>> I have this error when I used $diplay system verilog (system task)
>>
>> ERROR: [VRFC 10-4982] syntax error near '$display'
>> [/home/sp/rfnoc-test/rfnoc/fpga/rfnoc_block_gain/rfnoc_block_gain.v:222]
>> ERROR: [VRFC 10-2865] module 'rfnoc_block_gain' ignored due to previous
>> errors
>> [/home/sp/rfnoc-test/rfnoc/fpga/rfnoc_block_gain/rfnoc_block_gain.v:40]
>>
>>
>>
>>
>> On Tue, Aug 22, 2023 at 9:45=E2=80=AFAM Yasir =C3=96z=C3=A7al=C4=B1k <si=
multaneous11@gmail.com>
>> wrote:
>>
>>> Just to be clear, you mean $display function, right? If so, I have used
>>> it in my custom rfnoc block for simulation and it worked flawlessly. Ca=
n
>>> you give a little more detail about your code?
>>>
>>> sp <stackprogramer@gmail.com>, 22 A=C4=9Fu 2023 Sal, 08:01 tarihinde =
=C5=9Funu
>>> yazd=C4=B1:
>>>
>>>> why $diplay function is not work in my custom rfnoc block but it work
>>>> in other rfnoc blocks on usrp,
>>>> How can solve my problem?
>>>> I know that with rfnoc framework $diplay should be work in rfnoc block=
s
>>>> but....
>>>> every thing is same other block only name of block is diff...
>>>> thanks in advance
>>>> _______________________________________________
>>>> USRP-users mailing list -- usrp-users@lists.ettus.com
>>>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>>>
>>>

--000000000000190d4d06037d0026
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for your explanation.=C2=A0<br></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 22, 2023=
 at 10:36=E2=80=AFAM Yasir =C3=96z=C3=A7al=C4=B1k &lt;<a href=3D"mailto:sim=
ultaneous11@gmail.com">simultaneous11@gmail.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">You need to=
 use it inside a initial begin block.<div><br></div><div>initial begin</div=
><div>=C2=A0 $display(&quot;This ends with a new line &quot;);</div><div>en=
d</div><div><br></div><div>If you write like this, it will work. But don&#3=
9;t forget that the $display function is only used for simulation, but not =
synthesis. Therefore; it is best to use it in testbench files.</div><div><b=
r></div><div>Kind Regards,</div><div>Yasir</div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">sp &lt;<a href=3D"mailto:st=
ackprogramer@gmail.com" target=3D"_blank">stackprogramer@gmail.com</a>&gt;,=
 22 A=C4=9Fu 2023 Sal, 08:48 tarihinde =C5=9Funu yazd=C4=B1:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"l=
tr">Thanks very much, simulation test bench sv file works but when I used $=
display in the custom rfnoc block verilog module it have an error</div><div=
>I attached=C2=A0the source file of custom block</div><div dir=3D"ltr"><br>=
</div><div dir=3D"ltr">First problem:<br><div>I have this error when I used=
 $diplay system verilog (system task)</div><div><br></div><div>ERROR: [VRFC=
 10-4982] syntax error near &#39;$display&#39; [/home/sp/rfnoc-test/rfnoc/f=
pga/rfnoc_block_gain/rfnoc_block_gain.v:222]<br>ERROR: [VRFC 10-2865] modul=
e &#39;rfnoc_block_gain&#39; ignored due to previous errors [/home/sp/rfnoc=
-test/rfnoc/fpga/rfnoc_block_gain/rfnoc_block_gain.v:40]<br></div><div><br>=
</div><div><br></div><div><br></div></div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 22, 2023 at 9:45=E2=
=80=AFAM Yasir =C3=96z=C3=A7al=C4=B1k &lt;<a href=3D"mailto:simultaneous11@=
gmail.com" target=3D"_blank">simultaneous11@gmail.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Just =
to be clear, you mean $display function, right? If so, I have used it in my=
 custom rfnoc block for simulation and it worked flawlessly. Can you give a=
 little more detail about your code?</div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">sp &lt;<a href=3D"mailto:stackprogramer=
@gmail.com" target=3D"_blank">stackprogramer@gmail.com</a>&gt;, 22 A=C4=9Fu=
 2023 Sal, 08:01 tarihinde =C5=9Funu yazd=C4=B1:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr">why $diplay function is n=
ot work in my custom rfnoc block but it work in other rfnoc blocks on usrp,=
<br><div>How can solve my=C2=A0problem?</div><div>I know that with rfnoc fr=
amework $diplay should be work in rfnoc blocks but....</div><div>every thin=
g is same other block only name of block is diff...</div><div>thanks in adv=
ance=C2=A0<br></div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--000000000000190d4d06037d0026--

--===============2991475021539639613==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============2991475021539639613==--

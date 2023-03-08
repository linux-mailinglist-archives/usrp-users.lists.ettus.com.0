Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id AB33B6B0F18
	for <lists+usrp-users@lfdr.de>; Wed,  8 Mar 2023 17:43:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 5C2B738516A
	for <lists+usrp-users@lfdr.de>; Wed,  8 Mar 2023 11:43:54 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1678293834; bh=stFDnaB5Bn6HtRjYttHgEH4SZPNm/U3HdWgwIYVK5b4=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=K6cl6C4yXfSxCTvmOPn7c1prmVi/DH72EwNlF/IHHxUrpy5MHQMzGI34LtqPTHqrD
	 fgPvxQPSSgZ9+Q5eO5aw9YxsXP2bxqMurcTfgVHrjeLy531fnA1ii8MW7v1y4HPChX
	 KN6r+jnDrEao8Q4LT8ZgAhtQS0xyIm8FB0pUXR3pe75b8EqTaLbpjRdmTQtjmsu2mT
	 GPJwc8Xtrglx7P/Xw4tpijxSf30smjvuzkKbSWUbXC7Cme8Utes93Iy9J8XmDra5dn
	 e0+SkYwejoUJAyd3bO6XSBhjPRRMR0iKgyUdnTPHx8yO2fCmDAiGg67XpI4FdG3vWx
	 8Xq6Lj3hwZSpA==
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by mm2.emwd.com (Postfix) with ESMTPS id C698438515C
	for <usrp-users@lists.ettus.com>; Wed,  8 Mar 2023 11:43:10 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=nd.edu header.i=@nd.edu header.b="Dmjq+tkd";
	dkim-atps=neutral
Received: by mail-ed1-f53.google.com with SMTP id g3so68336932eda.1
        for <usrp-users@lists.ettus.com>; Wed, 08 Mar 2023 08:43:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nd.edu; s=google; t=1678293789;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=cfKcMEj9IoJ7gIdZPU/4qpcEG89wqXOt6tchP7o+yUE=;
        b=Dmjq+tkda7fTuwBSUGRNMa7zKhRV3C5ru4gklkOjFn+LA05y+oIsZHvJ9xB/yudhYB
         Ljp1GwofMMB0TJZYk6Zv60XSLZCYLo5M7knhl5uOlmIIusmrOa3EKM1RLK8q2v65hZ63
         +IedEmr0Po7JEcw2+ijkihoFNYpv1dDZW62oVSMpAAVYgEbRMWxC60XEAvpAT+i6oVd7
         djFzdxWpTemDvG6q3pwj1tGL4w01dPpdiOlREfp8da4Sb4G0hEhW3UuZUu1CrKhjbNsW
         Zh4kb+si4/rYZDTc6LzSO59ei6GRWf5ym8Lka0bRd4kwNfzStdGMW1GU3/sJNVZDEEZI
         Fkjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678293789;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cfKcMEj9IoJ7gIdZPU/4qpcEG89wqXOt6tchP7o+yUE=;
        b=Ynjibq08QJpttJTlyQOCegVcjNM/XTXuLYp1QWMdgWEBc5AAVROETVvTh2t7ipLnxz
         jtjc7C+GrFOoielupI8nAEgpg8cYoTIGt3DMU3h7xfO+N9vb8ic2BKg9UzhALFCJEkHo
         Ke0IDDXAKxqv+P6sKYrUU4x4yTUExByrFBpg+CXxYe1G1FCTy7UtNbBsb8W56OiD899W
         6vwyArCKFmwlXyMOi318cmMr4HNVx7VOtbTsPbYu7P34FLSks0cbuEz7K0/pojdrgzkq
         Mqw8AgdVrc75vRdN/i0ZI190zsZ9Ea3no0jFULNzU3hqBYR6GsouWnIU2o6z92m+lX/Q
         5NHg==
X-Gm-Message-State: AO0yUKX4acy2xduOeYWAjIotL+pvbtcQDRQqCxH9WZshQzpf57uL98Sz
	bvaysokLsPfjkdO9L6gaSkXExBJ4bJn2Rqr60ujAGQ==
X-Google-Smtp-Source: AK7set8ELOL4wa5FlcghkJEWYLKGCNP4yJFxUxNusfFQBVpDH60vViCeJkm3YCe7xX/dTDuKze0cBkRI+PNX2aC6YO0=
X-Received: by 2002:a50:d7da:0:b0:4bd:ce43:9eea with SMTP id
 m26-20020a50d7da000000b004bdce439eeamr10337925edj.2.1678293789447; Wed, 08
 Mar 2023 08:43:09 -0800 (PST)
MIME-Version: 1.0
References: <PH0PR15MB4704C1D70796EEDE9A062100E3B79@PH0PR15MB4704.namprd15.prod.outlook.com>
 <CAFche=juWaZaVaHrnw8zJ7ErCt8Xy6g4zzxJVkNFcuvYc6tOyA@mail.gmail.com>
In-Reply-To: <CAFche=juWaZaVaHrnw8zJ7ErCt8Xy6g4zzxJVkNFcuvYc6tOyA@mail.gmail.com>
From: Rob Kossler <rkossler@nd.edu>
Date: Wed, 8 Mar 2023 11:42:58 -0500
Message-ID: <CAB__hTSRf2V10VQDeANjD09sheWHEbDV+HJ=34kQ8EAVg-Ubyg@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: XW4G2ZWBGEGPBG2AGHSV6SIFTYZHVIFA
X-Message-ID-Hash: XW4G2ZWBGEGPBG2AGHSV6SIFTYZHVIFA
X-MailFrom: rkossler@nd.edu
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: "Vermeulen, Bas (Consultant)" <Bas.Vermeulen@molex.com>, "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: RFNOC module sending back (or receiving) data in the wrong order
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/XW4G2ZWBGEGPBG2AGHSV6SIFTYZHVIFA/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0046994512722147090=="

--===============0046994512722147090==
Content-Type: multipart/alternative; boundary="0000000000002648bd05f66639b2"

--0000000000002648bd05f66639b2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Maybe can you just change the streamer OTW & CPU format to "sc8" such that
no byte swapping will occur?

On Tue, Mar 7, 2023 at 10:31=E2=80=AFPM Wade Fife <wade.fife@ettus.com> wro=
te:

> You could swap the bytes in your block, or swap them in software on the
> host. The data gets rearranged by the streamer depending on the data type
> configured (e.g., sc16) and the endianness of the host machine.
>
> Wade
>
> On Tue, Mar 7, 2023 at 2:45=E2=80=AFAM Vermeulen, Bas (Consultant) via US=
RP-users <
> usrp-users@lists.ettus.com> wrote:
>
>> Hi,
>>
>> We are developing an RFNOC module that takes I/Q data, and turns that
>> into two 8 bit values.
>> I have a test program that sends data to the RFNOC module, and receives
>> the modified data.
>>
>> The RFNOC module treats the two 8 bit values as one signed 16 bit value.
>> When I read the data from the test program, I get it in the wrong order:
>>
>> Send: Re0 Im0 Re1 Im1 Re2 Im2 Re3 Im3
>> Receive: Val1 Val0 Val3 Val2
>>
>> Does anyone have any idea how to fix the order of the received values?
>>
>> Regards,
>>
>> Bas Vermeulen
>>
>> ------------------------------
>>
>>
>>
>> CONFIDENTIALITY NOTICE: This message (including any attachments) may
>> contain Molex confidential information, protected by law. If this messag=
e
>> is confidential, forwarding it to individuals, other than those with a n=
eed
>> to know, without the permission of the sender, is prohibited.
>>
>> This message is also intended for a specific individual. If you are not
>> the intended recipient, you should delete this message and are hereby
>> notified that any disclosure, copying, or distribution of this message o=
r
>> taking of any action based upon it, is strictly prohibited.
>>
>> English | Chinese | Japanese
>> www.molex.com/confidentiality.html
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--0000000000002648bd05f66639b2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Maybe can you just change the streamer OTW &amp; CPU forma=
t to &quot;sc8&quot; such that no byte swapping will occur?</div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 7, 2=
023 at 10:31=E2=80=AFPM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.com=
">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex"><div dir=3D"ltr">You could swap the bytes in your bloc=
k, or swap them in software on the host. The=C2=A0data gets rearranged by t=
he streamer depending on the data type configured (e.g., sc16) and the endi=
anness of the host machine.<div><br></div><div>Wade</div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 7, 202=
3 at 2:45=E2=80=AFAM Vermeulen, Bas (Consultant) via USRP-users &lt;<a href=
=3D"mailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.e=
ttus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div>




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Hi,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
We are developing an RFNOC module that takes I/Q data, and turns that into =
two 8 bit values.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
I have a test program that sends data to the RFNOC module, and receives the=
 modified data.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
The RFNOC module treats the two 8 bit values as one signed 16 bit value.</d=
iv>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
When I read the data from the test program, I get it in the wrong order:<br=
>
<br>
Send: Re0 Im0 Re1 Im1 Re2 Im2 Re3 Im3 <br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Receive: Val1 Val0 Val3 Val2</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Does anyone have any idea how to fix the order of the received values?</div=
>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Regards,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12pt=
;color:rgb(0,0,0);background-color:rgb(255,255,255)">
Bas Vermeulen<br>
</div>
<br>
<hr>
<font face=3D"Arial" color=3D"Gray" size=3D"1"><br>
<br>
<br>
CONFIDENTIALITY NOTICE: This message (including any attachments) may contai=
n Molex confidential information, protected by law. If this message is conf=
idential, forwarding it to individuals, other than those with a need to kno=
w, without the permission of the
 sender, is prohibited.<br>
<br>
This message is also intended for a specific individual. If you are not the=
 intended recipient, you should delete this message and are hereby notified=
 that any disclosure, copying, or distribution of this message or taking of=
 any action based upon it, is strictly
 prohibited.<br>
<br>
English | Chinese | Japanese<br>
<a href=3D"http://www.molex.com/confidentiality.html" target=3D"_blank">www=
.molex.com/confidentiality.html</a><br>
</font>
</div>

_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</div></blockquote></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>

--0000000000002648bd05f66639b2--

--===============0046994512722147090==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============0046994512722147090==--

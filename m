Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 8662054AA0F
	for <lists+usrp-users@lfdr.de>; Tue, 14 Jun 2022 09:09:09 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 24F373840AA
	for <lists+usrp-users@lfdr.de>; Tue, 14 Jun 2022 03:09:08 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1655190548; bh=PdxqXOCyjY5phu0b1I81CpNBRz/R1b/+GS3msTnD2vo=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=QTW7JHT23STkx2cGcz8WVU3wPXCus54ruaNX7oArQts0F8N686andC7jnBjtXvwGQ
	 txDmGDRNgfvMOOuxRug3R3NrhOIeHdOLQjc4rxJwLL4RAIJIVkY0/Q+hRqdEyWaorL
	 ZzJFeHROwJAizbJhTPiE4zz3j9dOJo7P1wGi6OT0oI1aNHZOW0IKwx3UjewifU0sK0
	 4VFaaz7Iyj3jZ2qnpBwjNvG6sQau88zmzl8JWIT3MOSElZXbfP4X9IB9j+ylMOnU2i
	 Oj0te6RRHKiufFEgI492FIYS6AMix9ys+EMx0Qm28HWvXJWbyiILE0mYgFblGRSppx
	 RhEE2E5PlRfPA==
Received: from mail-yb1-f174.google.com (mail-yb1-f174.google.com [209.85.219.174])
	by mm2.emwd.com (Postfix) with ESMTPS id 0B000383EA9
	for <usrp-users@lists.ettus.com>; Tue, 14 Jun 2022 03:08:05 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="omZ7bBuV";
	dkim-atps=neutral
Received: by mail-yb1-f174.google.com with SMTP id v81so13762856ybe.0
        for <usrp-users@lists.ettus.com>; Tue, 14 Jun 2022 00:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=d8Ou7iXZhv27nwzih3447Qwzo0cs4bKK7QjipDyyNyA=;
        b=omZ7bBuVUJcc3rmJ9MUmwt6oa1sEJEh2WEpZ30aBzWxiHL3FeGF02UunZTnafxqyHH
         oD3Tmr0LjoxN1bkRrNPJEycQmIRtT4yYVC1klAdyE6PxeRC8nywtRUkCoSVXYnRiyF+x
         hS/hn7wSpdl2c34ARU/ukRHxjHsjZTLkO3sg+apaYOCZOB14lIIWY/DvVegR+NArJyaT
         sKWjbSp/jcc87ys39W59OQUALqTpvJwtRXtQvUT1kTMSfcBEVZDdOPxhgIZX+2yKsNM9
         TgtLcKFI65/mcxW+MeLm30T3dby1Pk33mNcn8+N45bg8HccPHwzvhLYvbFIkXzld+H6o
         Bn0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=d8Ou7iXZhv27nwzih3447Qwzo0cs4bKK7QjipDyyNyA=;
        b=bBwou+FKx9P8tJ2LHzHfszRMu2Bnx96b0OA6IVCiIK+wR0lgb6IBimFd74N1sh6hTr
         GS9n7g0ylHjd+pR2wCRylwwikBuoj2GR9GUfGGroNFEvB9tp/w3BwVyf3IPIoUAs9yBY
         MLwV86JMQPHcv7oTHshFwkakShod8rBYyE+qUeecmOXi0zVXESZEL3bBt6UjzrRwjWdL
         MuXRrftTtOlaBTKpP1rm605c/a8KIy7GOoWTqYcoU2PJUpi78NyUw0D3nGNxLvU65SiN
         r6Z9naDCEbyRKKI5fn2x6jCekiByBJ4Kcyzv3uFXdSQKayHJEC9UdZsSOjHjWGdtHpBA
         shkg==
X-Gm-Message-State: AJIora+vy/mn0s1YUkQpyxFmV3hEtt6/rTpWJeWSmIRRIn7tjsBdpecR
	rukhC0vuRGRdtF7rzfechNBu6fkcf4+eaxPDF3CjpveFMsoCyAD0
X-Google-Smtp-Source: AGRyM1tNh6GzfqVet2iVN1AZOIvFZFfN9roqMtvjg9KnfFhuxUfaQD5zkBGbl8JwNIzSS7uQrxvQcXs3B+firf1+b+k=
X-Received: by 2002:a05:6902:114c:b0:641:87a7:da90 with SMTP id
 p12-20020a056902114c00b0064187a7da90mr3617427ybu.561.1655190484779; Tue, 14
 Jun 2022 00:08:04 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=S3PudkcunngQmNBfv4KB=pvkdHhd5JtOLP3tzs3hRz0q0xQ@mail.gmail.com>
 <CAFche=gQ=tmGkoHwQ2gHsv3XP2BLDez9=ZADpeA_zFgNOPah1g@mail.gmail.com>
In-Reply-To: <CAFche=gQ=tmGkoHwQ2gHsv3XP2BLDez9=ZADpeA_zFgNOPah1g@mail.gmail.com>
From: sp h <stackprogramer@gmail.com>
Date: Tue, 14 Jun 2022 11:37:53 +0430
Message-ID: <CAA=S3PvuBbxbP5sEtovj1W4EwhP=UW3krfXcO+PL34mawCT94A@mail.gmail.com>
To: Wade Fife <wade.fife@ettus.com>
Message-ID-Hash: 6G2SHDTZY4SRUFFIVZHSLNEHYR2264RF
X-Message-ID-Hash: 6G2SHDTZY4SRUFFIVZHSLNEHYR2264RF
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: Is it possible that synthesis and generating bitstream in RFNOC blocks make faster??!!!
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/6G2SHDTZY4SRUFFIVZHSLNEHYR2264RF/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============7396149289514449513=="

--===============7396149289514449513==
Content-Type: multipart/alternative; boundary="000000000000e1880d05e1631091"

--000000000000e1880d05e1631091
Content-Type: text/plain; charset="UTF-8"

Thanks for the feedback! I will test them.

On Tue, Jun 14, 2022 at 1:42 AM Wade Fife <wade.fife@ettus.com> wrote:

> Hi sp,
>
> It is possible to use incremental implementation using the checkpoints
> generated by the build flow, but I've never tried it with USRPs. This is an
> advanced Vivado feature so you would need to write your own TCL code to use
> that feature. See the Xilinx documentation for details. Keep in mind that
> this is only for implementation (not for synthesis) and it's only
> recommended for small and isolated design changes.
>
> Also, make sure when you run the build process that it's not regenerating
> the IP. IP generation/synthesis should only happen once then those results
> should be reused for each future build. But if you do "make cleanall" it
> will delete all the IP build results.
>
> A good way to reduce compilation time is to remove the parts of the RFNoC
> Image Core that you don't need. For example, if you are only doing RX then
> you can remove the TX paths, including the DUCs. If you're not using all
> the radio ports, you can remove the radio blocks and paths that you aren't
> using. And if you're not using the replay block then you should definitely
> remove that since that takes a long time to build.
>
> Also, you should not be rebuilding frequently, ideally. Simulation is a
> much faster way to debug and test changes to your code. So it's usually
> worth spending some time building a good testbench to make sure everything
> works the way you expect before you rebuild the FPGA.
>
> Wade
>
>
> On Sun, Jun 12, 2022 at 2:40 AM sp h <stackprogramer@gmail.com> wrote:
>
>> Is it possible that synthesis and generating bitstream in RFNOC blocks
>> make faster??!!!
>> I developed a custom RFNOC block, (I used example gain for RFNOC block)
>> but when I want to synthesize Verilog code It takes long about 2 hours...
>> For building the RFNOC bitstream image I used the below command:
>>
>>
>>>      rfnoc_image_builder -F /home/sp/Documents/uhd-4.1.0.5/fpga -I
>>> /home/sp/Documents/rfnoc-module -p /home/sp/xilinx/Vivado -y
>>> /home/sp/Documents/rfnoc-module/rfnoc/icores/gain_x300_rfnoc_image_core.yml
>>
>>
>> My question is there any option that makes RFNOC synthesis faster? like
>> incremental-implementation-vivado or any same case.
>>
>> https://www.xilinx.com/video/hardware/incremental-implementation-vivado.html
>>
>> Thanks in advance
>> _______________________________________________
>> USRP-users mailing list -- usrp-users@lists.ettus.com
>> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>

--000000000000e1880d05e1631091
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the feedback! I will test them.=C2=A0<br></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue=
, Jun 14, 2022 at 1:42 AM Wade Fife &lt;<a href=3D"mailto:wade.fife@ettus.c=
om">wade.fife@ettus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr"><div>Hi sp,</div><div><br></div><di=
v>It is possible to use incremental implementation using the checkpoints ge=
nerated by the build flow, but I&#39;ve never tried it with USRPs. This is =
an advanced Vivado feature so you would need to write your own TCL code to =
use that feature. See the Xilinx documentation for details. Keep in mind th=
at this is only for implementation (not for synthesis) and it&#39;s only re=
commended for small and isolated design changes.</div><div><br></div><div>A=
lso, make sure when you run the build process that it&#39;s not regeneratin=
g the IP. IP generation/synthesis should only happen once then those result=
s should be reused for each future build. But if you do &quot;make cleanall=
&quot; it will delete all the IP build results.<br></div><div><br></div><di=
v>A good way to reduce compilation time is to remove the parts of the RFNoC=
 Image Core that you don&#39;t need. For example, if you are only doing RX =
then you can remove the TX paths, including the DUCs. If you&#39;re not usi=
ng all the radio ports, you can remove the radio blocks and paths that you =
aren&#39;t using. And if you&#39;re not using the replay block then you sho=
uld definitely remove that since that takes a long time to build.</div><div=
><br></div><div>Also, you should not be rebuilding frequently, ideally. Sim=
ulation is a much faster way to debug and test changes to your code. So it&=
#39;s usually worth spending some time building a good testbench to make su=
re everything works the way you expect before you rebuild the FPGA.</div><d=
iv><br></div><div>Wade</div><div><br></div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, Jun 12, 2022 at 2:40 AM =
sp h &lt;<a href=3D"mailto:stackprogramer@gmail.com" target=3D"_blank">stac=
kprogramer@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div dir=3D"ltr">Is it possible that synthesis and gene=
rating bitstream in RFNOC blocks make faster??!!!<div>I developed a custom =
RFNOC block, (I used example gain for RFNOC block) but when I want to synth=
esize Verilog code It takes long about 2 hours...</div><div>For building th=
e RFNOC bitstream image I used the below command:</div><div><br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex"><br>=C2=A0 =C2=A0 =C2=A0rfnoc_=
image_builder -F /home/sp/Documents/uhd-4.1.0.5/fpga -I /home/sp/Documents/=
rfnoc-module -p /home/sp/xilinx/Vivado -y /home/sp/Documents/rfnoc-module/r=
fnoc/icores/gain_x300_rfnoc_image_core.yml</blockquote><div><br></div><div>=
My question is there any option that makes RFNOC synthesis=C2=A0faster? lik=
e=C2=A0 incremental-implementation-vivado or any same case.</div><div><a hr=
ef=3D"https://www.xilinx.com/video/hardware/incremental-implementation-viva=
do.html" target=3D"_blank">https://www.xilinx.com/video/hardware/incrementa=
l-implementation-vivado.html</a><br></div><div><br></div><div>Thanks in adv=
ance</div></div>
_______________________________________________<br>
USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ettus.com" ta=
rget=3D"_blank">usrp-users@lists.ettus.com</a><br>
To unsubscribe send an email to <a href=3D"mailto:usrp-users-leave@lists.et=
tus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><br>
</blockquote></div>
</blockquote></div>

--000000000000e1880d05e1631091--

--===============7396149289514449513==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============7396149289514449513==--

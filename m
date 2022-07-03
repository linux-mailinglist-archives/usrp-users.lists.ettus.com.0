Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6D6564867
	for <lists+usrp-users@lfdr.de>; Sun,  3 Jul 2022 17:31:56 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 4CE81383E56
	for <lists+usrp-users@lfdr.de>; Sun,  3 Jul 2022 11:31:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1656862312; bh=uZxTYCzd3DnPgR8Hiby8e+yzPEpaLjzLaNtFrKr4hKM=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=WEifYgaYpeMFWbMsLm7BZoluv3ujL6+lQ9PY4k+a4gyy6YvhEvkZgteG5g+D1l5SE
	 E1d5RwUOqbrblSgLHTMO7KZaDz7Jz6aLbFZF0a4IAduJf28+MCbxCPXkthtR/9FdMB
	 J1reHr5qnqZJo+12ghrhUHRxgKQ6tYgbMZNbcV2Ns2YgRkS7ZV/0x98oIkJAd7Pf6x
	 bjUmydB7DzBM1QNEIxatNnTkmV24G4tbPRg9N0SoUki4+MfSmayk/GGzAZRjMczt9z
	 zQukyN/k7vzn6pTWqd3GyagKik6VRkvjO81bCawz0XG/8CVrtvjy39lZ8exXw0iCZF
	 FUrgkumykZaXg==
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	by mm2.emwd.com (Postfix) with ESMTPS id 7021C383E15
	for <usrp-users@lists.ettus.com>; Sun,  3 Jul 2022 11:29:27 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="aWBb7W9j";
	dkim-atps=neutral
Received: by mail-yb1-f171.google.com with SMTP id d145so9458434ybh.1
        for <usrp-users@lists.ettus.com>; Sun, 03 Jul 2022 08:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BtZtnuBzhoGF121KafJvIS73UGB/wHxKSFnrMVpDi8Q=;
        b=aWBb7W9jzYclrocnCG4dSFri1dXu9QBA1ywsCcpEUjqbpWk3MhPCxfj8xpenezwyWR
         m26tXaR1aCHpkbhNUSLpuYKUM8rCK8nqRfCSgdyObOCZfZS3ZyDJamR9Jn108Ldf/FJd
         DlogXd7VckRt8kBJMwrmvvlsK/z8hgF1kLVZS5LJqwW+rNmhxLLGCjhmZu+398J5c+nS
         ZBxDfIrCIyx6MTQFY32w929izuHjPdOBnhrmekHpGGP9iDXs7Z14eamGrXmuDDz9QTwY
         cJxkAV0ZK1eozHPsNAmzHw45oxjYX/vljrMnJiPT5lKfz5+nWXfLvfwYUdDSDxJ71yF2
         kN1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BtZtnuBzhoGF121KafJvIS73UGB/wHxKSFnrMVpDi8Q=;
        b=EfuQXvQSYV0d+EXpYQt+uKvvqvTioifui/O+qDNraBfwFvB51SLWx2mfW0hmHTG8HJ
         BwHcAT+1RHCT+2qGwUlYWoZHxN4/+tV8tSCRRCPMqV65yfHH563HhU3Wkc/j9T5Z1uJS
         rGfY/k3CLSkIFHTBLeo6lh1YGCzjKY9jTpamz3cXG1GUrnVnKlmOBsDoXzRfNiNYmbMx
         DqpnJplVmwK1gr4khQNs9JPMpF+p2hB7ua4adS96YbLIE5RXlzm6SwJ3B0ab0/IcMrEW
         eGefbjXwTaUtVMiMHvF5iSQ9tFmPwVXuL/URv9edxMcDfO3b0F85nga/ZBPfahT7nlZn
         vnmQ==
X-Gm-Message-State: AJIora/bHbCq8LJb9GnE+2d1kC21vMs1znqHyfNpkQ0NyrCy9Vvm8Q6+
	mweOO4d7qezrFkmAxw30G2rXJTLHFfb/ZWTYWnw=
X-Google-Smtp-Source: AGRyM1vX1mVcDPkqFn18K4W2wgzpis/KsHuHV30QWYuTIckbkF2AcC6TCa9ebyWWj5vcyZh4JfUHHT6NbzQC3d943MM=
X-Received: by 2002:a25:bdca:0:b0:66e:ee6:f9ef with SMTP id
 g10-20020a25bdca000000b0066e0ee6f9efmr10739049ybk.330.1656862166004; Sun, 03
 Jul 2022 08:29:26 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2EpH5TqnpHd7hUUvchN_pSMnW=UU7=RJ_-a3jv+Jy59=Q@mail.gmail.com>
 <6E3D61AB-1674-4F9D-8952-5BF6479D0852@gmail.com> <CAAxXO2Gzu2DFt7mkMJjYZrNk4X8g+TK7j3ymzpeehDX=NSjm4Q@mail.gmail.com>
In-Reply-To: <CAAxXO2Gzu2DFt7mkMJjYZrNk4X8g+TK7j3ymzpeehDX=NSjm4Q@mail.gmail.com>
From: sp <stackprogramer@gmail.com>
Date: Sun, 3 Jul 2022 19:59:14 +0430
Message-ID: <CAA=S3Pvgz1vcgV+HLNCAAL1ZL2LN-QF4qDtGxZNbd-Ojz_2szQ@mail.gmail.com>
To: Nikos Balkanas <nbalkanas@gmail.com>
Message-ID-Hash: 2PHFZ7BTH45SGC55TRGBYWCAOCPZC2HI
X-Message-ID-Hash: 2PHFZ7BTH45SGC55TRGBYWCAOCPZC2HI
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Marcus D Leech <patchvonbraun@gmail.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How can convert a complex float 32 signal to complex int 16 signal for using in USRP??
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/2PHFZ7BTH45SGC55TRGBYWCAOCPZC2HI/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9029952335206324055=="

--===============9029952335206324055==
Content-Type: multipart/alternative; boundary="000000000000d8b5e505e2e84819"

--000000000000d8b5e505e2e84819
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks! So I set scaler to an appropriate value that ceil is not
effected my data. But in Gnuradio I can not find an easy convert solution.
So I do test and error to find a solution.

On Sun, Jul 3, 2022 at 1:44 AM Nikos Balkanas <nbalkanas@gmail.com> wrote:

> On Sat, Jul 2, 2022 at 6:54 PM Marcus D Leech <patchvonbraun@gmail.com>
> wrote:
> >
> > The convention in the UHD and GnuRadio universe is that floats are
> scaled into {-1.0,+1.0}.
> >
> > If you setup your streamer to use complex float CPU format and sc16 wir=
e
> format you just need to scale your complex floats appropriately.
>
> Just to elaborate on this a bit. If your data is large enough (>>1)
> then +- 1 won't make any difference...
> If it is (< 1) then it will be a big problem. Scale accordingly:)
> You can use either ceil or floor. Same error:)
>
> Nikos
> >
> > Sent from my iPhone
> >
> > > On Jul 2, 2022, at 10:22 AM, Nikos Balkanas <nbalkanas@gmail.com>
> wrote:
> > >
> > > =EF=BB=BFHi,
> > >
> > > I don't know volk_32fc_convert_16 ic. Dunno if it converts between bi=
g
> > > and little indians:(
> > > When converting a float to int, you always have to ceil or floor the
> float.
> > > Ceil sounds as good as any. You can easily change that to floor if yo=
u
> > > run into problems.
> > > Since clibs le32to* take ints as arguments, I would first convert
> > > float32 to int32 from gnuradio save to file, and then worry about
> > > the indians when importing to uhd...
> > >
> > > HTH
> > > Nikos
> > >
> > >> On Fri, Jul 1, 2022 at 8:42 AM sp h <stackprogramer@gmail.com> wrote=
:
> > >>
> > >> I recorded a complex signal file, I did it with HackRFONE,  For
> sending on USRP I want to use the int16 option as input, My question is h=
ow
> can convert a complex float 32 signal to complex int 16 for USRP?
> > >> what's the relation between complex float 32 and complex int 32 in
> USRP?
> > >> I know that in USRP numbers are in format complex int 16 and
> big-endian and in Gnuradio numbers in format complex float 32 and
> little-endian...
> > >> https://files.ettus.com/manual/page_converters.html
> > >> I used volk lib but the float that I entered as input, is ceiled to
> bigger integers. Is this a method valid for converting signals...?Or my
> data will be corrupt!!!
> > >> Thanks in advance.
> > >>
> > >>
> > >>>       lv_16sc_t* outputVector;
> > >>>
> > >>>       lv_32fc_t* inputVector;
> > >>>
> > >>>       inputVector->real(25.55);
> > >>>
> > >>>       inputVector->imag(45);
> > >>>
> > >>>       volk_32fc_convert_16ic(outputVector,inputVector,32);
> > >>>
> > >>>       qDebug()<<outputVector->real()<<"-----";
> > >>
> > >>
> > >> The output:
> > >>>
> > >>> 26 -----
> > >>
> > >> _______________________________________________
> > >> USRP-users mailing list -- usrp-users@lists.ettus.com
> > >> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
> > > _______________________________________________
> > > USRP-users mailing list -- usrp-users@lists.ettus.com
> > > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>

--000000000000d8b5e505e2e84819
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks! So I set scaler to an appropriate value that ceil =
is not effected=C2=A0my data. But in Gnuradio I can not find an easy conver=
t solution.<br><div>So I do test and error to find a solution.</div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun,=
 Jul 3, 2022 at 1:44 AM Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gmai=
l.com">nbalkanas@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex">On Sat, Jul 2, 2022 at 6:54 PM Marcus D Leech &lt=
;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun=
@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; The convention in the UHD and GnuRadio universe is that floats are sca=
led into {-1.0,+1.0}.<br>
&gt;<br>
&gt; If you setup your streamer to use complex float CPU format and sc16 wi=
re format you just need to scale your complex floats appropriately.<br>
<br>
Just to elaborate on this a bit. If your data is large enough (&gt;&gt;1)<b=
r>
then +- 1 won&#39;t make any difference...<br>
If it is (&lt; 1) then it will be a big problem. Scale accordingly:)<br>
You can use either ceil or floor. Same error:)<br>
<br>
Nikos<br>
&gt;<br>
&gt; Sent from my iPhone<br>
&gt;<br>
&gt; &gt; On Jul 2, 2022, at 10:22 AM, Nikos Balkanas &lt;<a href=3D"mailto=
:nbalkanas@gmail.com" target=3D"_blank">nbalkanas@gmail.com</a>&gt; wrote:<=
br>
&gt; &gt;<br>
&gt; &gt; =EF=BB=BFHi,<br>
&gt; &gt;<br>
&gt; &gt; I don&#39;t know volk_32fc_convert_16 ic. Dunno if it converts be=
tween big<br>
&gt; &gt; and little indians:(<br>
&gt; &gt; When converting a float to int, you always have to ceil or floor =
the float.<br>
&gt; &gt; Ceil sounds as good as any. You can easily change that to floor i=
f you<br>
&gt; &gt; run into problems.<br>
&gt; &gt; Since clibs le32to* take ints as arguments, I would first convert=
<br>
&gt; &gt; float32 to int32 from gnuradio save to file, and then worry about=
<br>
&gt; &gt; the indians when importing to uhd...<br>
&gt; &gt;<br>
&gt; &gt; HTH<br>
&gt; &gt; Nikos<br>
&gt; &gt;<br>
&gt; &gt;&gt; On Fri, Jul 1, 2022 at 8:42 AM sp h &lt;<a href=3D"mailto:sta=
ckprogramer@gmail.com" target=3D"_blank">stackprogramer@gmail.com</a>&gt; w=
rote:<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; I recorded a complex signal file, I did it with HackRFONE,=C2=
=A0 For sending on USRP I want to use the int16 option as input, My questio=
n is how can convert a complex float 32 signal to complex int 16 for USRP?<=
br>
&gt; &gt;&gt; what&#39;s the relation between complex float 32 and complex =
int 32 in USRP?<br>
&gt; &gt;&gt; I know that in USRP numbers are in format complex int 16 and =
big-endian and in Gnuradio numbers in format complex float 32 and little-en=
dian...<br>
&gt; &gt;&gt; <a href=3D"https://files.ettus.com/manual/page_converters.htm=
l" rel=3D"noreferrer" target=3D"_blank">https://files.ettus.com/manual/page=
_converters.html</a><br>
&gt; &gt;&gt; I used volk lib but the float that I entered as input, is cei=
led to bigger integers. Is this a method valid for converting signals...?Or=
 my data will be corrupt!!!<br>
&gt; &gt;&gt; Thanks in advance.<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0lv_16sc_t* outputVector;<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0lv_32fc_t* inputVector;<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0inputVector-&gt;real(25.55);<br=
>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0inputVector-&gt;imag(45);<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0volk_32fc_convert_16ic(outputVe=
ctor,inputVector,32);<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0qDebug()&lt;&lt;outputVector-&g=
t;real()&lt;&lt;&quot;-----&quot;;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; The output:<br>
&gt; &gt;&gt;&gt;<br>
&gt; &gt;&gt;&gt; 26 -----<br>
&gt; &gt;&gt;<br>
&gt; &gt;&gt; _______________________________________________<br>
&gt; &gt;&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists=
.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; &gt;&gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-=
leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</=
a><br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users@lists.ett=
us.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
&gt; &gt; To unsubscribe send an email to <a href=3D"mailto:usrp-users-leav=
e@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus.com</a><b=
r>
</blockquote></div>

--000000000000d8b5e505e2e84819--

--===============9029952335206324055==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9029952335206324055==--

Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C88356826B
	for <lists+usrp-users@lfdr.de>; Wed,  6 Jul 2022 11:05:54 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id E407538391E
	for <lists+usrp-users@lfdr.de>; Wed,  6 Jul 2022 05:05:52 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1657098352; bh=2jsn14yPfNzF2ohKRi7AHk4Hntqkfpk9Figsu5Q8E3Q=;
	h=References:In-Reply-To:From:Date:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=trMtk+KAZNstnRWCpInkDzewhb8hvfXFlydYkPu59uunqfR8+WIeyIXDEK/4V6qyz
	 0ClqRV6iy/WfRXiQhdL7957PLp1dj36cxD/MrsZRoB9AqbirCHJJLFp0y+ACy7+wS5
	 bxs4LpG5MgB1IQwz1HbIsWskRmREPi9YanJNzg4uf51Bo0CGjpjY3dHbN+fp5CBjnV
	 E3hUighVDIn7FTY+9caG96SeM0keLdII7KugV+fADqniTwhSsx98fG8IhQxgiXdV6h
	 kOrNKfi3LGDEQ4BvIuBni/KdjHsO30oUk2gSxOhcb8a3/fmUZtbImWkoFb10hTcdM/
	 AVw/D/4Y4J1uQ==
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	by mm2.emwd.com (Postfix) with ESMTPS id F2E1138391E
	for <usrp-users@lists.ettus.com>; Wed,  6 Jul 2022 05:03:35 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="IIxGOKJ4";
	dkim-atps=neutral
Received: by mail-yb1-f177.google.com with SMTP id i7so26248090ybe.11
        for <usrp-users@lists.ettus.com>; Wed, 06 Jul 2022 02:03:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZmZVIrlQ24rGtDnmvo9EmlJRanmFZzTAgnC7YIoglEc=;
        b=IIxGOKJ49D/tEWLPnwmysM5wY7awDhEwXazKoJD6FPUeH5rify9LQk+moNwjC5Dg1d
         j5MNyitb5/8RZGjU2WQgSEOazmUMgrAqXhKbrwLFmYXbVijcXU+iEMbdqQo0BYGSyHzQ
         ycYrK1RMidDhtfKm1Wh+rJwdDiQc9QrkVVB5+tUVd5yNkvLB6BBWpcYFwY94TK1CNGOp
         J/dFPDcxGDoYwhcUMVE2fbMzarCl4YMRefntSTNQxuBfFJRPBTHB1PyxQTuRFN7q9n5S
         R5ADOw6IhjaJIdEyMGGAe2jvMyLJJtI3o+LHhZw3gIIoOpN9xac+tcRYGgoqIyNDMQTa
         LCzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZmZVIrlQ24rGtDnmvo9EmlJRanmFZzTAgnC7YIoglEc=;
        b=yPzzvCWUBAp0OiqHNi6ko8V87ccFhNx8WcIzPdDJR2knsd51+NKm6hm2XPQKUq8Xzi
         Flb8DP1Uuh7SlaAvhLBPYtMqMoOAb2cm/09h0be/gBmxMVYUGmDlLYVZR1dBVXSoeSot
         9KL1oFUe46SKJwgeWT+1wNzw/PYyX96kA2iaynWasv9qNV6b3+0v3niKLwR2GtfrVYld
         4cQ2FbyQlPlBNLdHv5IW6Wv5rQEhK2FP4W6YdlldDSMYohAru9qPio8VRnOOm0t+Z0oy
         CzbpupJpNmjS5DWmpG1H2B4kyQTwvYwwqLCGjUhdHZXhh85YYAkhGoxYKznuB9o0qyxr
         OCZg==
X-Gm-Message-State: AJIora9o5a47F1JT0zbYm4Fs7B2cgZr7/86uzKHPfEd2nWIpMqryF4Qn
	qLKUCSdBZU38eo2pVSTytn7z9CUnvbqlbXZPxaU=
X-Google-Smtp-Source: AGRyM1vL04RqxpHmqmy4l3zaTFWGW/+coBW5Rn4WrK4Izy2PQ+rOYwe5C/NvVJsm24AIY6TJNEoxPTxoNp3QrGSg7Zo=
X-Received: by 2002:a5b:2c9:0:b0:669:b009:f16a with SMTP id
 h9-20020a5b02c9000000b00669b009f16amr42363337ybp.132.1657098214707; Wed, 06
 Jul 2022 02:03:34 -0700 (PDT)
MIME-Version: 1.0
References: <CAAxXO2EpH5TqnpHd7hUUvchN_pSMnW=UU7=RJ_-a3jv+Jy59=Q@mail.gmail.com>
 <6E3D61AB-1674-4F9D-8952-5BF6479D0852@gmail.com> <CAAxXO2Gzu2DFt7mkMJjYZrNk4X8g+TK7j3ymzpeehDX=NSjm4Q@mail.gmail.com>
 <CAA=S3Pvgz1vcgV+HLNCAAL1ZL2LN-QF4qDtGxZNbd-Ojz_2szQ@mail.gmail.com> <a304c03d-1ee8-da48-2b17-c2b5784d1615@gmail.com>
In-Reply-To: <a304c03d-1ee8-da48-2b17-c2b5784d1615@gmail.com>
From: sp <stackprogramer@gmail.com>
Date: Wed, 6 Jul 2022 13:33:23 +0430
Message-ID: <CAA=S3PuHbtrUh3=ALwUw2ySJP14-LaNVrE2pNsuD9h_yTVXHpg@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID-Hash: RUTHOPQOSY3DPVLGG2KASJFX4S3MTPVN
X-Message-ID-Hash: RUTHOPQOSY3DPVLGG2KASJFX4S3MTPVN
X-MailFrom: stackprogramer@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: Nikos Balkanas <nbalkanas@gmail.com>, usrp-users <usrp-users@lists.ettus.com>
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: How can convert a complex float 32 signal to complex int 16 signal for using in USRP??
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/RUTHOPQOSY3DPVLGG2KASJFX4S3MTPVN/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============1693373534393311911=="

--===============1693373534393311911==
Content-Type: multipart/alternative; boundary="000000000000721e1305e31f3e0b"

--000000000000721e1305e31f3e0b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks! I will examine your useful description...

On Sun, Jul 3, 2022 at 8:45 PM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 2022-07-03 11:29, sp wrote:
>
> Thanks! So I set scaler to an appropriate value that ceil is not
> effected my data. But in Gnuradio I can not find an easy convert solution=
.
> So I do test and error to find a solution.
>
> This isn't even a Gnu Radio or UHD problem, just a generic
> programming/algorithms thing.  Not even DSP.
>
> Let's say your complex-float file from a HackRF is NOT scaled into
> {-1.0,+1.0}.   Then you simply look at the largest absolute value across
>   the whole file and divide all your values by that value. Then you've
> preserved dynamic range without clipping, and it is then in the
>   "expected" domain of complex-floats in Gnu Radio (or UHD for that
> matter).
>
> We're talking about files here, so it's not like you have to "understand"
> this is in real-time. You can do a one-time conversion
>  of the not-scaled-to-{-1.0,+1.0} file into that range, and then it's in
> the right range.
>
> But my *guess* is that hackrf recording tools if they're using
> complex-float will have the floating-point already scaled into {-1.0,+1.0=
},
> and in
>  host-native IEEE-754 floating-point format.  I'd be mildly astonished if
> it were otherwise.
>
>
>
> On Sun, Jul 3, 2022 at 1:44 AM Nikos Balkanas <nbalkanas@gmail.com> wrote=
:
>
>> On Sat, Jul 2, 2022 at 6:54 PM Marcus D Leech <patchvonbraun@gmail.com>
>> wrote:
>> >
>> > The convention in the UHD and GnuRadio universe is that floats are
>> scaled into {-1.0,+1.0}.
>> >
>> > If you setup your streamer to use complex float CPU format and sc16
>> wire format you just need to scale your complex floats appropriately.
>>
>> Just to elaborate on this a bit. If your data is large enough (>>1)
>> then +- 1 won't make any difference...
>> If it is (< 1) then it will be a big problem. Scale accordingly:)
>> You can use either ceil or floor. Same error:)
>>
>> Nikos
>> >
>> > Sent from my iPhone
>> >
>> > > On Jul 2, 2022, at 10:22 AM, Nikos Balkanas <nbalkanas@gmail.com>
>> wrote:
>> > >
>> > > =EF=BB=BFHi,
>> > >
>> > > I don't know volk_32fc_convert_16 ic. Dunno if it converts between b=
ig
>> > > and little indians:(
>> > > When converting a float to int, you always have to ceil or floor the
>> float.
>> > > Ceil sounds as good as any. You can easily change that to floor if y=
ou
>> > > run into problems.
>> > > Since clibs le32to* take ints as arguments, I would first convert
>> > > float32 to int32 from gnuradio save to file, and then worry about
>> > > the indians when importing to uhd...
>> > >
>> > > HTH
>> > > Nikos
>> > >
>> > >> On Fri, Jul 1, 2022 at 8:42 AM sp h <stackprogramer@gmail.com>
>> wrote:
>> > >>
>> > >> I recorded a complex signal file, I did it with HackRFONE,  For
>> sending on USRP I want to use the int16 option as input, My question is =
how
>> can convert a complex float 32 signal to complex int 16 for USRP?
>> > >> what's the relation between complex float 32 and complex int 32 in
>> USRP?
>> > >> I know that in USRP numbers are in format complex int 16 and
>> big-endian and in Gnuradio numbers in format complex float 32 and
>> little-endian...
>> > >> https://files.ettus.com/manual/page_converters.html
>> > >> I used volk lib but the float that I entered as input, is ceiled to
>> bigger integers. Is this a method valid for converting signals...?Or my
>> data will be corrupt!!!
>> > >> Thanks in advance.
>> > >>
>> > >>
>> > >>>       lv_16sc_t* outputVector;
>> > >>>
>> > >>>       lv_32fc_t* inputVector;
>> > >>>
>> > >>>       inputVector->real(25.55);
>> > >>>
>> > >>>       inputVector->imag(45);
>> > >>>
>> > >>>       volk_32fc_convert_16ic(outputVector,inputVector,32);
>> > >>>
>> > >>>       qDebug()<<outputVector->real()<<"-----";
>> > >>
>> > >>
>> > >> The output:
>> > >>>
>> > >>> 26 -----
>> > >>
>> > >> _______________________________________________
>> > >> USRP-users mailing list -- usrp-users@lists.ettus.com
>> > >> To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>> > > _______________________________________________
>> > > USRP-users mailing list -- usrp-users@lists.ettus.com
>> > > To unsubscribe send an email to usrp-users-leave@lists.ettus.com
>>
>
>

--000000000000721e1305e31f3e0b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks! I will examine your useful description...<br></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Su=
n, Jul 3, 2022 at 8:45 PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbra=
un@gmail.com">patchvonbraun@gmail.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2022-07-03 11:29, sp wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">Thanks! So I set scaler to an appropriate value
        that ceil is not effected=C2=A0my data. But in Gnuradio I can not
        find an easy convert solution.<br>
        <div>So I do test and error to find a solution.</div>
      </div>
    </blockquote>
    This isn&#39;t even a Gnu Radio or UHD problem, just a generic
    programming/algorithms thing.=C2=A0 Not even DSP.<br>
    <br>
    Let&#39;s say your complex-float file from a HackRF is NOT scaled into
    {-1.0,+1.0}.=C2=A0=C2=A0 Then you simply look at the largest absolute v=
alue
    across<br>
    =C2=A0 the whole file and divide all your values by that value. Then
    you&#39;ve preserved dynamic range without clipping, and it is then in
    the<br>
    =C2=A0 &quot;expected&quot; domain of complex-floats in Gnu Radio (or U=
HD for that
    matter).<br>
    <br>
    We&#39;re talking about files here, so it&#39;s not like you have to
    &quot;understand&quot; this is in real-time. You can do a one-time conv=
ersion<br>
    =C2=A0of the not-scaled-to-{-1.0,+1.0} file into that range, and then
    it&#39;s in the right range.<br>
    <br>
    But my *guess* is that hackrf recording tools if they&#39;re using
    complex-float will have the floating-point already scaled into
    {-1.0,+1.0}, and in<br>
    =C2=A0host-native IEEE-754 floating-point format.=C2=A0 I&#39;d be mild=
ly
    astonished if it were otherwise.<br>
    <br>
    <br>
    <blockquote type=3D"cite"><br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Sun, Jul 3, 2022 at 1:44 A=
M
          Nikos Balkanas &lt;<a href=3D"mailto:nbalkanas@gmail.com" target=
=3D"_blank">nbalkanas@gmail.com</a>&gt;
          wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">On
          Sat, Jul 2, 2022 at 6:54 PM Marcus D Leech &lt;<a href=3D"mailto:=
patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun@gmail.com</a>&gt;
          wrote:<br>
          &gt;<br>
          &gt; The convention in the UHD and GnuRadio universe is that
          floats are scaled into {-1.0,+1.0}.<br>
          &gt;<br>
          &gt; If you setup your streamer to use complex float CPU
          format and sc16 wire format you just need to scale your
          complex floats appropriately.<br>
          <br>
          Just to elaborate on this a bit. If your data is large enough
          (&gt;&gt;1)<br>
          then +- 1 won&#39;t make any difference...<br>
          If it is (&lt; 1) then it will be a big problem. Scale
          accordingly:)<br>
          You can use either ceil or floor. Same error:)<br>
          <br>
          Nikos<br>
          &gt;<br>
          &gt; Sent from my iPhone<br>
          &gt;<br>
          &gt; &gt; On Jul 2, 2022, at 10:22 AM, Nikos Balkanas &lt;<a href=
=3D"mailto:nbalkanas@gmail.com" target=3D"_blank">nbalkanas@gmail.com</a>&g=
t;
          wrote:<br>
          &gt; &gt;<br>
          &gt; &gt; =EF=BB=BFHi,<br>
          &gt; &gt;<br>
          &gt; &gt; I don&#39;t know volk_32fc_convert_16 ic. Dunno if it
          converts between big<br>
          &gt; &gt; and little indians:(<br>
          &gt; &gt; When converting a float to int, you always have to
          ceil or floor the float.<br>
          &gt; &gt; Ceil sounds as good as any. You can easily change
          that to floor if you<br>
          &gt; &gt; run into problems.<br>
          &gt; &gt; Since clibs le32to* take ints as arguments, I would
          first convert<br>
          &gt; &gt; float32 to int32 from gnuradio save to file, and
          then worry about<br>
          &gt; &gt; the indians when importing to uhd...<br>
          &gt; &gt;<br>
          &gt; &gt; HTH<br>
          &gt; &gt; Nikos<br>
          &gt; &gt;<br>
          &gt; &gt;&gt; On Fri, Jul 1, 2022 at 8:42 AM sp h &lt;<a href=3D"=
mailto:stackprogramer@gmail.com" target=3D"_blank">stackprogramer@gmail.com=
</a>&gt;
          wrote:<br>
          &gt; &gt;&gt;<br>
          &gt; &gt;&gt; I recorded a complex signal file, I did it with
          HackRFONE,=C2=A0 For sending on USRP I want to use the int16 opti=
on
          as input, My question is how can convert a complex float 32
          signal to complex int 16 for USRP?<br>
          &gt; &gt;&gt; what&#39;s the relation between complex float 32 an=
d
          complex int 32 in USRP?<br>
          &gt; &gt;&gt; I know that in USRP numbers are in format
          complex int 16 and big-endian and in Gnuradio numbers in
          format complex float 32 and little-endian...<br>
          &gt; &gt;&gt; <a href=3D"https://files.ettus.com/manual/page_conv=
erters.html" rel=3D"noreferrer" target=3D"_blank">https://files.ettus.com/m=
anual/page_converters.html</a><br>
          &gt; &gt;&gt; I used volk lib but the float that I entered as
          input, is ceiled to bigger integers. Is this a method valid
          for converting signals...?Or my data will be corrupt!!!<br>
          &gt; &gt;&gt; Thanks in advance.<br>
          &gt; &gt;&gt;<br>
          &gt; &gt;&gt;<br>
          &gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0lv_16sc_t* outputVect=
or;<br>
          &gt; &gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0lv_32fc_t* inputVecto=
r;<br>
          &gt; &gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0inputVector-&gt;real(=
25.55);<br>
          &gt; &gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0inputVector-&gt;imag(=
45);<br>
          &gt; &gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0
          =C2=A0volk_32fc_convert_16ic(outputVector,inputVector,32);<br>
          &gt; &gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt;=C2=A0 =C2=A0 =C2=A0
          =C2=A0qDebug()&lt;&lt;outputVector-&gt;real()&lt;&lt;&quot;-----&=
quot;;<br>
          &gt; &gt;&gt;<br>
          &gt; &gt;&gt;<br>
          &gt; &gt;&gt; The output:<br>
          &gt; &gt;&gt;&gt;<br>
          &gt; &gt;&gt;&gt; 26 -----<br>
          &gt; &gt;&gt;<br>
          &gt; &gt;&gt; _______________________________________________<br>
          &gt; &gt;&gt; USRP-users mailing list -- <a href=3D"mailto:usrp-u=
sers@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
          &gt; &gt;&gt; To unsubscribe send an email to <a href=3D"mailto:u=
srp-users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.e=
ttus.com</a><br>
          &gt; &gt; _______________________________________________<br>
          &gt; &gt; USRP-users mailing list -- <a href=3D"mailto:usrp-users=
@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.com</a><br>
          &gt; &gt; To unsubscribe send an email to <a href=3D"mailto:usrp-=
users-leave@lists.ettus.com" target=3D"_blank">usrp-users-leave@lists.ettus=
.com</a><br>
        </blockquote>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div>

--000000000000721e1305e31f3e0b--

--===============1693373534393311911==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============1693373534393311911==--

Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D3A5FBDB8
	for <lists+usrp-users@lfdr.de>; Wed, 12 Oct 2022 00:15:51 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 57141380A1E
	for <lists+usrp-users@lfdr.de>; Tue, 11 Oct 2022 18:15:50 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1665526550; bh=9s8liOxlWPDie36q1pao1Pe2RfZ1OEOF4qb4/HCOwow=;
	h=From:Date:References:In-Reply-To:To:CC:Subject:List-Id:
	 List-Archive:List-Help:List-Owner:List-Post:List-Subscribe:
	 List-Unsubscribe:From;
	b=NL+QqcSFW30rs4WzQubYhC2bmiYQ3f4N5frZYWSgC48QyVvuVzSDqq8io8QKbCljh
	 5E49iGWak0mpFdvwKMAXsAsmBWLOZ6FoCnLtEoYK9wbHvBe9+yMsuh15aZcom7C3bz
	 F3bwaXIYrVQUzjN8cLoALBAK9GyXBTtHh9ISQaJW5AGll4IROVztDa9dXYZ1+pMKHV
	 CzaEYoIVUnTDn8mWk3aqfI8q6QiaIRyDJoeLS3pdBcGRuMIT2WvZFP8fvTeV/foNeE
	 8iflrRowuUEp3yUnXiUTB4uot4Oem9PPv/PCpgLzrH1EMagJwCsI5jZlurQpvgzoT3
	 QPGKjQaaqsMuA==
Received: from mail-qv1-f52.google.com (mail-qv1-f52.google.com [209.85.219.52])
	by mm2.emwd.com (Postfix) with ESMTPS id 2D41038308E
	for <USRP-users@lists.ettus.com>; Tue, 11 Oct 2022 18:11:49 -0400 (EDT)
Authentication-Results: mm2.emwd.com;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="cq+QpDiL";
	dkim-atps=neutral
Received: by mail-qv1-f52.google.com with SMTP id o67so9413361qvo.13
        for <USRP-users@lists.ettus.com>; Tue, 11 Oct 2022 15:11:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:from:to:cc:subject:date:message-id
         :reply-to;
        bh=imdyeOhsLNqzCPzTV+/tDqSTbKzve116+U+iucBqC4U=;
        b=cq+QpDiLRtlYUMUosIIVSvJWr6Z7/az1yZrNqOfFwYYd/x3dHt5otfZSW2OX0pZ/CF
         24CrBhYRddXxUyG7ns9LmOySTRXFu7NaUMPGfdBHEVuSagl0XPWJ7GaA/EyuzRM8ftdB
         5M8iU3bsAl9yEBY8nzpnviWx6IA1lVfW4xO2Pkb7afZLo+cD6PJ3/HHz/SeTt9z8dMb5
         R3IcePJXTdjVZ3HYUVaBAUjxTkKVOGoHJ9No/+PiKpehVyysGDzTvtDqY5eiN1M/1ebH
         8YYb+Ec5ethPpt9Un4FHzw70sUwwmSnzzy/i3qXBYmoilzRQm9EOAm+P5jDYkrZJtCAB
         zHKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=imdyeOhsLNqzCPzTV+/tDqSTbKzve116+U+iucBqC4U=;
        b=mUvKRD3BIKaJZ+OCsD5xN3fnPQz9HbZd0xuwKT4fErDWDz1N2x0mdQfR5THVUR0PB8
         CCJ06XMbpny7D9GxrJZmJdoxp2RUgcAJ/1myDcMHT2OiUMz+xIh3EIMuaFEfsb9bB5wM
         bzECicNl4db0eFrZ0Sv0g/QHXrbPR4UcStCvZ/crApcZsqfer7wc+0fwbfagtW82PNQY
         FAc7N6LryBn01DObLfBKJdaUYJ81d1PeGSmE1Em7gOLOSea3sn+14oZmcihD3uS3ZZ6e
         +arkRwFEdhoby2lnADbcIsuR81JUwbWukNeGWb6oRDMImSi/2f0MlZcgU/o+4ff+lNPS
         XBzQ==
X-Gm-Message-State: ACrzQf3Oag9/xYWn8OtHOFHo9VKg+r2SNak02DAmeFqKdVZSv0hcJlnu
	njylERvbz+OOL1ovOkM8IFY=
X-Google-Smtp-Source: AMsMyM6yWdI/nZ7CuugRQIahJWms6yzvJI/j3lsKzVuzpAyeG83xQU57HTJ5E2KXvbJSg1DrPtHYTA==
X-Received: by 2002:a05:6214:f04:b0:4b1:cb3b:79bd with SMTP id gw4-20020a0562140f0400b004b1cb3b79bdmr21297094qvb.22.1665526308566;
        Tue, 11 Oct 2022 15:11:48 -0700 (PDT)
Received: from smtpclient.apple ([2605:b100:d16:4cce:6023:edb3:25a3:4cf0])
        by smtp.gmail.com with ESMTPSA id q22-20020a05620a0d9600b006c479acd82fsm14376822qkl.7.2022.10.11.15.11.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Oct 2022 15:11:48 -0700 (PDT)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Tue, 11 Oct 2022 18:11:46 -0400
Message-Id: <9D936851-6284-407A-A928-2112A93A3C9D@gmail.com>
References: <1376300873.302187.1665525196243@mail.yahoo.com>
In-Reply-To: <1376300873.302187.1665525196243@mail.yahoo.com>
To: zhou <hwzhou@yahoo.com>
X-Mailer: iPhone Mail (19G82)
Message-ID-Hash: S6AFEZUGBSZR7DVJRMEWYTSYW5OZLKDB
X-Message-ID-Hash: S6AFEZUGBSZR7DVJRMEWYTSYW5OZLKDB
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: UHD 4.1.0 speed
List-Id: "Discussion and technical support related to USRP, UHD, RFNoC" <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/S6AFEZUGBSZR7DVJRMEWYTSYW5OZLKDB/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============4864878190881607576=="


--===============4864878190881607576==
Content-Type: multipart/alternative; boundary=Apple-Mail-6C6F6FB3-CBBA-44E0-93C3-C56F182B374B
Content-Transfer-Encoding: 7bit


--Apple-Mail-6C6F6FB3-CBBA-44E0-93C3-C56F182B374B
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Is it the same OS/kernel version in both cases?

Sent from my iPhone

> On Oct 11, 2022, at 5:53 PM, zhou <hwzhou@yahoo.com> wrote:
>=20
> =EF=BB=BF
> Hi Marcus,=20
>=20
> I haven't tried UHD 4.2 or 4.3. I see ULLL sometimes in new system, so act=
ually I am thinking reverting UHD back to the 3.10.
>=20
>=20
>=20
>=20
> On Tuesday, 11 October 2022 at 21:47:30 BST, Marcus D. Leech <patchvonbrau=
n@gmail.com> wrote:
>=20
>=20
>> On 2022-10-11 16:23, zhou wrote:
>> Thanks Marcus. Yes, I use the get_time_now function to read time inside U=
SRPs.
>>=20
>> I also think the newer UHD versions should be better, but the measurement=
s tell differently. The queries to USRPs are sequential.
>> There are 16 USRPs using UHD 4.1.0. I query them sequentially and the tim=
e intervals one example is as follows (unit: ms):
>> 1.683691
>> 1.606288
>> 1.629145
>> 1.790804
>> 1.685894
>> 1.736507
>> 1.471674
>> 1.424962
>> 1.460004
>> 1.403206
>> 1.435221
>> 1.394569
>> 2.043707
>> 1.509543
>> 1.853792
>>=20
>> In old system, 24 USRPs use UHD 3.10. The time intervals in one example i=
s (unit: ms):
>> 0.385173
>> 0.296745
>> 0.284212
>> 0.273682
>> 0.278543
>> 0.274327
>> 0.279519
>> 0.274441
>> 0.276693
>> 0.296875
>> 0.275212
>> 0.307623
>> 0.309554
>> 0.28233
>> 0.28234
>> 0.275119
>> 0.283057
>> 0.277138
>> 0.279357
>> 0.276074
>> 0.277696
>> 0.276335
>> 0.280675
>>=20
>>=20
>> Though there is some variance in intervals in both systems, the differenc=
e between old and new systems are significant and reliable.
>> Could you please pass my case to the R&D team to confirm?
>>=20
>> Thanks,
>> Hongwei
>> =20
>>=20
>>=20
>> On Tuesday, 11 October 2022 at 18:35:24 BST, Marcus D. Leech <patchvonbra=
un@gmail.com> wrote:
>>=20
>>=20
>> On 2022-10-11 12:15, zhou via USRP-users wrote:
>>=20
>> Hi,
>>=20
>> Some of our USRPs are using UHD 3.10 because they are in old systems. and=
 I am also using UHD 4.1.0 in some other USRPs in new system. The USRP produ=
cts are all NI USRP 2944 (X310).
>> In my applications, I need to use PPS signal to synchronize multiple USRP=
s. After applying PPS signals, I read back the time in USRPs one by one. Bec=
ause of network delay, there is some difference between the readings. Howeve=
r, the difference is much bigger in UHD 4.1.0.=20
>>=20
>> The interval between two USRPs using UHD 3.10 is about 0.2ms while it is a=
bout 1.4ms in UHD 4.1.0
>>=20
>> Does this mean that UHD 4.1.0 is slower than UHD 3.10?
>>=20
>> Thanks for any suggestion,
>>=20
>>  Hongwei
>>=20
> Have you tried UHD 4.2 or UHD 4.3?
>=20
> I'll point out that the performance-critical aspect is the streaming perfo=
rmance.     The latency on get_time_now() shouldn't matter
>   that much, unless you're trying to use it for synchronization, and you r=
eally should be doing that.  That's what set_time_next_pps()
>   and friends are for.
>=20
>=20
> _______________________________________________
> USRP-users mailing list -- usrp-users@lists.ettus.com
> To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--Apple-Mail-6C6F6FB3-CBBA-44E0-93C3-C56F182B374B
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Is it the same OS/kernel version in both ca=
ses?<br><br><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><=
blockquote type=3D"cite">On Oct 11, 2022, at 5:53 PM, zhou &lt;hwzhou@yahoo.=
com&gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D=
"ltr">=EF=BB=BF<div class=3D"ydp4d4f5827yahoo-style-wrap" style=3D"font-fami=
ly:Helvetica Neue, Helvetica, Arial, sans-serif;font-size:13px;"><div></div>=

        <div dir=3D"ltr" data-setdir=3D"false">Hi Marcus,&nbsp;</div><div di=
r=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"fa=
lse">I haven't tried UHD 4.2 or 4.3. I see ULLL sometimes in new system, so a=
ctually I am thinking reverting UHD back to the 3.10.</div><div dir=3D"ltr" d=
ata-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"false"><br></=
div><div dir=3D"ltr" data-setdir=3D"false"><br></div><div><br></div>
       =20
        </div><div id=3D"ydp73a21c8yahoo_quoted_6186119582" class=3D"ydp73a2=
1c8yahoo_quoted">
            <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, sa=
ns-serif;font-size:13px;color:#26282a;">
               =20
                <div>
                    On Tuesday, 11 October 2022 at 21:47:30 BST, Marcus D. L=
eech &lt;patchvonbraun@gmail.com&gt; wrote:
                </div>
                <div><br></div>
                <div><br></div>
                <div><div id=3D"ydp73a21c8yiv0843887143">
 =20
   =20
 =20
  <div>
    <div class=3D"ydp73a21c8yiv0843887143moz-cite-prefix">On 2022-10-11 16:2=
3, zhou wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div style=3D"font-family:Helvetica Neue, Helvetica, Arial, sans-serif=
;font-size:13px;" class=3D"ydp73a21c8yiv0843887143ydpef891c61yahoo-style-wra=
p">
        <div dir=3D"ltr">Thanks Marcus. Yes, I use the
          get_time_now function to read time inside USRPs.</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">I also think the newer UHD
          versions should be better, but the measurements tell
          differently. The queries to USRPs are sequential.</div>
        <div dir=3D"ltr">There are 16 USRPs using UHD
          4.1.0. I query them sequentially and the time intervals one
          example is as follows (unit: ms):</div>
        <div dir=3D"ltr">
          <div>
            <table style=3D"border-collapse:collapse;width:48pt;" width=3D"6=
4" cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
              <colgroup><col style=3D"width:48pt;" width=3D"64"> </colgroup>=
<tbody>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"width:48pt;min-height:15pt;" width=3D"64" hei=
ght=3D"20" align=3D"right">1.683691</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">1.606288</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">1.629145</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">1.790804</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">1.685894</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">1.736507</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">1.471674</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">1.424962</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">1.460004</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">1.403206</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">1.435221</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">1.394569</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">2.043707</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">1.509543</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">1.853792</td>
                </tr>
              </tbody>
            </table>
          </div>
          <br>
        </div>
        <div dir=3D"ltr">In old system, 24 USRPs use
          UHD 3.10. The time intervals in one example is (unit: ms):</div>
        <div dir=3D"ltr">
          <div>
            <table style=3D"border-collapse:collapse;width:48pt;" width=3D"6=
4" cellspacing=3D"0" cellpadding=3D"0" border=3D"0">
              <colgroup><col style=3D"width:48pt;" width=3D"64"> </colgroup>=
<tbody>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"width:48pt;min-height:15pt;" width=3D"64" hei=
ght=3D"20" align=3D"right">0.385173</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">0.296745</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">0.284212</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">0.273682</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">0.278543</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">0.274327</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">0.279519</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">0.274441</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">0.276693</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">0.296875</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">0.275212</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">0.307623</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">0.309554</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">0.28233</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">0.28234</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">0.275119</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">0.283057</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">0.277138</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">0.279357</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">0.276074</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">0.277696</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">0.276335</td>
                </tr>
                <tr style=3D"min-height:15pt;" height=3D"20">
                  <td style=3D"min-height:15pt;" height=3D"20" align=3D"righ=
t">0.280675</td>
                </tr>
              </tbody>
            </table>
          </div>
          <br>
        </div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">Though there is some variance
          in intervals in both systems, the difference between old and
          new systems are significant and reliable.</div>
        <div dir=3D"ltr">Could you please pass my case
          to the R&amp;D team to confirm?</div>
        <div dir=3D"ltr"><br>
        </div>
        <div dir=3D"ltr">Thanks,</div>
        <div dir=3D"ltr">Hongwei</div>
        <div dir=3D"ltr">&nbsp;</div>
        <div dir=3D"ltr"><br>
        </div>
        <div><br>
        </div>
      </div>
      <div id=3D"ydp73a21c8yiv0843887143ydp2ff4a00eyahoo_quoted_6295737119" c=
lass=3D"ydp73a21c8yiv0843887143ydp2ff4a00eyahoo_quoted">
        <div style=3D"font-family:'Helvetica Neue', Helvetica, Arial, sans-s=
erif;font-size:13px;color:#26282a;">
          <div> On Tuesday, 11 October 2022 at 18:35:24 BST, Marcus D.
            Leech <a href=3D"mailto:patchvonbraun@gmail.com" class=3D"ydp73a=
21c8yiv0843887143moz-txt-link-rfc2396E" rel=3D"nofollow" target=3D"_blank">&=
lt;patchvonbraun@gmail.com&gt;</a> wrote: </div>
          <div><br>
          </div>
          <div><br>
          </div>
          <div>
            <div id=3D"ydp73a21c8yiv0843887143ydp2ff4a00eyiv9416287177">
              <div id=3D"ydp73a21c8yiv0843887143ydp2ff4a00eyiv9416287177yqt6=
8152" class=3D"ydp73a21c8yiv0843887143ydp2ff4a00eyiv9416287177yqt5082330473"=
>
                <div>
                  <div class=3D"ydp73a21c8yiv0843887143ydp2ff4a00eyiv9416287=
177moz-cite-prefix">On
                    2022-10-11 12:15, zhou via USRP-users wrote:<br clear=3D=
"none">
                  </div>
                  <blockquote type=3D"cite"> </blockquote>
                </div>
                <div>
                  <div style=3D"font-family:Helvetica Neue, Helvetica, Arial=
, sans-serif;font-size:13px;" class=3D"ydp73a21c8yiv0843887143ydp2ff4a00eyiv=
9416287177ydpf0592c6fyahoo-style-wrap">
                    <div dir=3D"ltr">Hi,</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">Some of our USRPs are using UHD 3.10
                      because they are in old systems. and I am also
                      using UHD 4.1.0 in some other USRPs in new system.
                      The USRP products are all NI USRP 2944 (X310).</div>
                    <div dir=3D"ltr">In my applications, I need to use PPS
                      signal to synchronize multiple USRPs. After
                      applying PPS signals, I read back the time in
                      USRPs one by one. Because of network delay, there
                      is some difference between the readings. However,
                      the difference is much bigger in UHD 4.1.0.&nbsp;</div=
>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">The interval between two USRPs using
                      UHD 3.10 is about 0.2ms while it is about 1.4ms in
                      UHD 4.1.0</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">Does this mean that UHD 4.1.0 is
                      slower than UHD 3.10?</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">Thanks for any suggestion,</div>
                    <div dir=3D"ltr"><br clear=3D"none">
                    </div>
                    <div dir=3D"ltr">&nbsp;Hongwei<br clear=3D"none">
                    </div>
                    <br>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </blockquote>
    Have you tried UHD 4.2 or UHD 4.3?<br>
    <br>
    I'll point out that the performance-critical aspect is the streaming
    performance.&nbsp;&nbsp;&nbsp;&nbsp; The latency on get_time_now() shoul=
dn't matter<br>
    &nbsp; that much, unless you're trying to use it for synchronization, an=
d
    you really should be doing that.&nbsp; That's what set_time_next_pps()<b=
r>
    &nbsp; and friends are for.<br>
    <br>
    <br>
  </div>

</div>_______________________________________________<br>USRP-users mailing l=
ist -- <a href=3D"mailto:usrp-users@lists.ettus.com" rel=3D"nofollow" target=
=3D"_blank">usrp-users@lists.ettus.com</a><br>To unsubscribe send an email t=
o <a href=3D"mailto:usrp-users-leave@lists.ettus.com" rel=3D"nofollow" targe=
t=3D"_blank">usrp-users-leave@lists.ettus.com</a><br></div>
            </div>
        </div></div></blockquote></body></html>=

--Apple-Mail-6C6F6FB3-CBBA-44E0-93C3-C56F182B374B--

--===============4864878190881607576==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============4864878190881607576==--

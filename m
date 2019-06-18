Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 608024A625
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jun 2019 18:04:55 +0200 (CEST)
Received: from [::1] (port=49588 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hdGbO-00024h-Bd; Tue, 18 Jun 2019 12:04:54 -0400
Received: from sanddollar.geekisp.com ([216.168.135.167]:38614)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.92) (envelope-from <philip@opensdr.com>) id 1hdGbK-0001wL-Dl
 for usrp-users@lists.ettus.com; Tue, 18 Jun 2019 12:04:50 -0400
Received: (qmail 3087 invoked by uid 1003); 18 Jun 2019 16:04:13 -0000
Received: from unknown (HELO ?10.115.32.140?) (philip@opensdr.com@96.4.48.237)
 by mail.geekisp.com with (ECDHE-RSA-AES128-GCM-SHA256 encrypted)
 SMTP; 18 Jun 2019 16:04:13 -0000
Date: Tue, 18 Jun 2019 11:04:06 -0500
User-Agent: K-9 Mail for Android
In-Reply-To: <CAO_1D1V5-7c_L1HY3T0FtpWiQ+mkyxjpxaOHRgJA4=jYZqsPrg@mail.gmail.com>
References: <CAO_1D1XtztkMvVKD2VG9CXFi+U492yWKakfmfaWS54Fxp5wywQ@mail.gmail.com>
 <5D07FF68.9080804@gmail.com>
 <CAO_1D1W9h1hg_182mQ5oDZbaVqHNgFnu9gjPnMZ08ZLd0eSNgA@mail.gmail.com>
 <5D080359.8070609@gmail.com>
 <CAO_1D1Web8+vG02Sqra-eBxnHTZiMEFnwc2rDzSjuL=-VryCLQ@mail.gmail.com>
 <5D08067E.90306@gmail.com>
 <CAO_1D1V5-7c_L1HY3T0FtpWiQ+mkyxjpxaOHRgJA4=jYZqsPrg@mail.gmail.com>
MIME-Version: 1.0
To: Donnie C <dbc23910@gmail.com>,
 Donnie C via USRP-users <usrp-users@lists.ettus.com>,
 "Marcus D. Leech" <patchvonbraun@gmail.com>
Message-ID: <8F1A6590-F958-4C9A-9D65-6185C33A42C6@opensdr.com>
Subject: Re: [USRP-users] E310 Startup/Boot not working
X-BeenThere: usrp-users@lists.ettus.com
X-Mailman-Version: 2.1.27
Precedence: list
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
List-Unsubscribe: <http://lists.ettus.com/mailman/options/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=unsubscribe>
List-Archive: <http://lists.ettus.com/pipermail/usrp-users_lists.ettus.com/>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Subscribe: <http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com>, 
 <mailto:usrp-users-request@lists.ettus.com?subject=subscribe>
From: Philip Balister via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Philip Balister <philip@opensdr.com>
Cc: "usrp-users@lists.ettus.com" <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============6276866273732091459=="
Errors-To: usrp-users-bounces@lists.ettus.com
Sender: "USRP-users" <usrp-users-bounces@lists.ettus.com>
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - mm2.emwd.com
X-AntiAbuse: Original Domain - lfdr.de
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - lists.ettus.com
X-Get-Message-Sender-Via: mm2.emwd.com: acl_c_authenticated_local_user: mailman/mailman
X-Authenticated-Sender: mm2.emwd.com: mailman@lists.ettus.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 

--===============6276866273732091459==
Content-Type: multipart/alternative; boundary="----V111FW33TK2RYE66MS8448I9R9V8G0"
Content-Transfer-Encoding: 7bit

------V111FW33TK2RYE66MS8448I9R9V8G0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

The image creates the partitions=2E

Philip

On June 18, 2019 8:55:53 AM CDT, Donnie C via USRP-users <usrp-users@lists=
=2Eettus=2Ecom> wrote:
>The download sizes appear to be fine, and I am not using FTP, could it
>be
>something to do with the partitions of the microSD card? I was reading
>the
>Ettus tutorial again and it refered to the sd card having a few
>partitions
>one of which is a boot partition, is the image suppose to create this
>partition?
>
>On Mon, Jun 17, 2019 at 3:30 PM Marcus D=2E Leech
><patchvonbraun@gmail=2Ecom>
>wrote:
>
>> On 06/17/2019 05:27 PM, Donnie C wrote:
>>
>> Its definitely being written to the right place /dev folder doesnt
>have
>> anything large under it, but how would you check if the image was
>> downloaded in text mode?
>>
>> Some windows FTP clients default to text mode, even when downloading
>> binary data=2E  But that would only apply if you used FTP=2E
>>
>> You sure your download didn't fail in the middle?  Compare the sizes=2E
>>
>>
>>
>> On Mon, Jun 17, 2019 at 3:17 PM Marcus D=2E Leech
><patchvonbraun@gmail=2Ecom>
>> wrote:
>>
>>> On 06/17/2019 05:09 PM, Donnie C wrote:
>>> > Im pretty sure the speed grade matches so it must be an incorrect
>sd
>>> > card burn, but as far as I can tell I followed the ettus tutorial
>for
>>> > sd image burning, is there any extra steps involved they don't go
>over?
>>> Bad card?  Bad card burner?  Pulled the card before the I/O had been
>>> fully flushed out to it?  Downloaded the image in text mode?  Got
>the
>>>    device name wrong when burning, and now you have a large file
>under
>>> /dev, instead of written out to the actual card?
>>>
>>>
>>>
>>

--=20
Sent from my Android device with K-9 Mail=2E Please excuse my brevity=2E
------V111FW33TK2RYE66MS8448I9R9V8G0
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body>The image creates the partitions=2E<br><br>Philip<=
br><br><div class=3D"gmail_quote">On June 18, 2019 8:55:53 AM CDT, Donnie C=
 via USRP-users &lt;usrp-users@lists=2Eettus=2Ecom&gt; wrote:<blockquote cl=
ass=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0=2E8ex; border-left: 1px =
solid rgb(204, 204, 204); padding-left: 1ex;">
<div dir=3D"ltr"><div dir=3D"ltr">The download sizes appear to be fine, an=
d I am not using FTP, could it be something to do with the partitions of th=
e microSD card? I was reading the Ettus tutorial again and it refered to th=
e sd card having a few partitions one of which is a boot partition, is the =
image suppose to create this partition?</div><div dir=3D"ltr"><br></div><di=
v class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 1=
7, 2019 at 3:30 PM Marcus D=2E Leech &lt;<a href=3D"mailto:patchvonbraun@gm=
ail=2Ecom">patchvonbraun@gmail=2Ecom</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=2E8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <div class=3D"gmail-m_7068035594790689265moz-cite-prefix">On 06/17/201=
9 05:27 PM, Donnie C wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div>Its definitely being written to the right place /dev folder
          doesnt have anything large under it, but how would you check
          if the image was downloaded in text mode?</div>
      </div>
    </blockquote>
    Some windows FTP clients default to text mode, even when downloading
    binary data=2E&nbsp; But that would only apply if you used FTP=2E<br>
    <br>
    You sure your download didn't fail in the middle?&nbsp; Compare the
    sizes=2E<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr"><br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 17, 2019 at 3:=
17
            PM Marcus D=2E Leech &lt;<a href=3D"mailto:patchvonbraun@gmail=
=2Ecom" target=3D"_blank">patchvonbraun@gmail=2Ecom</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
=2E8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 06/17/20=
19 05:09 PM,
            Donnie C wrote:<br>
            &gt; Im pretty sure the speed grade matches so it must be an
            incorrect sd <br>
            &gt; card burn, but as far as I can tell I followed the
            ettus tutorial for <br>
            &gt; sd image burning, is there any extra steps involved
            they don't go over?<br>
            Bad card?&nbsp; Bad card burner?&nbsp; Pulled the card before =
the I/O
            had been <br>
            fully flushed out to it?&nbsp; Downloaded the image in text
            mode?&nbsp; Got the<br>
            &nbsp; &nbsp;device name wrong when burning, and now you have =
a large
            file under <br>
            /dev, instead of written out to the actual card?<br>
            <br>
            <br>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div></div>
</blockquote></div><br>-- <br>Sent from my Android device with K-9 Mail=2E=
 Please excuse my brevity=2E</body></html>
------V111FW33TK2RYE66MS8448I9R9V8G0--


--===============6276866273732091459==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============6276866273732091459==--


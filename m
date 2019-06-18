Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 812344A62E
	for <lists+usrp-users@lfdr.de>; Tue, 18 Jun 2019 18:06:18 +0200 (CEST)
Received: from [::1] (port=53304 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1hdGcj-0002dr-CO; Tue, 18 Jun 2019 12:06:17 -0400
Received: from mail-io1-f65.google.com ([209.85.166.65]:33735)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <dbc23910@gmail.com>) id 1hdGcf-0002Va-Ii
 for usrp-users@lists.ettus.com; Tue, 18 Jun 2019 12:06:13 -0400
Received: by mail-io1-f65.google.com with SMTP id u13so31182617iop.0
 for <usrp-users@lists.ettus.com>; Tue, 18 Jun 2019 09:05:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0QLvO0ArkWCrfGa0mzTMHvxKinYzuVhWlObeWGGmMlY=;
 b=KFPp/AU8bQZBqH1iMl7AmaILiMhnmHjqBZ+1odrN1RfnjE44OgKbrTwQm4UGySAjNZ
 RPahAUGZLRU3IQSjmssEjYDU6sZaVHV4jJvYSvey7Sf5COctDFU5qJ4x2UEd8Dl3efkK
 SkLtGxvR9C+Cn6CRIRGiy+CN0CytmRWrZ9ARHPZlQo/ltkrDOhppwFfwgO8AbR5Wb485
 t7SlGHEpvsSH8uFaT2QsQlpmR3jCMdC8Y0ih1XVw+N1plcdXgzDb7VaqvtHGU5BuGQdw
 Cz5AUZ0BNk0pn3snZC2E8MV/9+gbRLkKC1oHm5q7b+vCoCti1QBgV4ytK3fl/YApwUx5
 AxPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0QLvO0ArkWCrfGa0mzTMHvxKinYzuVhWlObeWGGmMlY=;
 b=RyN+cGqZa6+hockQT8MLU29v1u/SVnhOCFcwquYRfvBJW/o6ciSdXD66a90NTNmj/c
 yquPQ3HKGBp/Non0IDAcibeWSFIPA9M9TLlRcpZ1uFXK9wfJZvnYUXSvVpdnNu8tbjwp
 MEcmqHwmybDtGu8llX35YwuRQDeO3YIN97l2HdTh7VAR7TLXeabX5V7VMSuU4dgfrOEv
 9oiIbwphvXa+LbZs/IWtRDgfZYfxCX49rXUvFw/ot2aHR8b5yxfgG7tjzUYtv8ulKeJb
 lfZTBLp/p+TnjU2oXrFOc8OLqj5EEcJdZ0lAWuvCZSAsImsuQNhUovi6vhtCaKrgK2Pl
 u2sw==
X-Gm-Message-State: APjAAAWAngIEDivP4JHN7jmF1zRMoW0ZEu1iROGOoPDl473MslsIoSIJ
 WIHklOQxoLrJmzIuZNBabaHq6AnP4c7Qgx3Cnac=
X-Google-Smtp-Source: APXvYqzPypcWzSHxUKvwYzjcCeslf9nIwnk2ee5BD9gSQJCLWYe5rAcSA0c1aZ2oM6gO3l3SFpMRl5J3vNVKsak682Q=
X-Received: by 2002:a02:914c:: with SMTP id b12mr3852480jag.105.1560873932859; 
 Tue, 18 Jun 2019 09:05:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAO_1D1XtztkMvVKD2VG9CXFi+U492yWKakfmfaWS54Fxp5wywQ@mail.gmail.com>
 <5D07FF68.9080804@gmail.com>
 <CAO_1D1W9h1hg_182mQ5oDZbaVqHNgFnu9gjPnMZ08ZLd0eSNgA@mail.gmail.com>
 <5D080359.8070609@gmail.com>
 <CAO_1D1Web8+vG02Sqra-eBxnHTZiMEFnwc2rDzSjuL=-VryCLQ@mail.gmail.com>
 <5D08067E.90306@gmail.com>
 <CAO_1D1V5-7c_L1HY3T0FtpWiQ+mkyxjpxaOHRgJA4=jYZqsPrg@mail.gmail.com>
 <5D090AF8.4030405@gmail.com>
In-Reply-To: <5D090AF8.4030405@gmail.com>
Date: Tue, 18 Jun 2019 10:05:21 -0600
Message-ID: <CAO_1D1UMkSOonMY-Qp_XxT5vUzKYM9cQRL32KwMN2HkrLDAf6g@mail.gmail.com>
To: "Marcus D. Leech" <patchvonbraun@gmail.com>
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
From: Donnie C via USRP-users <usrp-users@lists.ettus.com>
Reply-To: Donnie C <dbc23910@gmail.com>
Cc: usrp-users@lists.ettus.com
Content-Type: multipart/mixed; boundary="===============7086189241523210352=="
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

--===============7086189241523210352==
Content-Type: multipart/alternative; boundary="0000000000004eb0df058b9b4801"

--0000000000004eb0df058b9b4801
Content-Type: text/plain; charset="UTF-8"

I managed to fix it, the error was as you mentioned earlier the bmap
install location was incorrect I was originally using /dev/sdc1 when it
should have just /dev/sdc

On Tue, Jun 18, 2019, 10:02 AM Marcus D. Leech <patchvonbraun@gmail.com>
wrote:

> On 06/18/2019 09:55 AM, Donnie C wrote:
>
> The download sizes appear to be fine, and I am not using FTP, could it be
> something to do with the partitions of the microSD card? I was reading the
> Ettus tutorial again and it refered to the sd card having a few partitions
> one of which is a boot partition, is the image suppose to create this
> partition?
>
> The image contains everything you need.
>
> You did *uncompress* the image after downloading it?
>
>
>
> On Mon, Jun 17, 2019 at 3:30 PM Marcus D. Leech <patchvonbraun@gmail.com>
> wrote:
>
>> On 06/17/2019 05:27 PM, Donnie C wrote:
>>
>> Its definitely being written to the right place /dev folder doesnt have
>> anything large under it, but how would you check if the image was
>> downloaded in text mode?
>>
>> Some windows FTP clients default to text mode, even when downloading
>> binary data.  But that would only apply if you used FTP.
>>
>> You sure your download didn't fail in the middle?  Compare the sizes.
>>
>>
>>
>> On Mon, Jun 17, 2019 at 3:17 PM Marcus D. Leech <patchvonbraun@gmail.com>
>> wrote:
>>
>>> On 06/17/2019 05:09 PM, Donnie C wrote:
>>> > Im pretty sure the speed grade matches so it must be an incorrect sd
>>> > card burn, but as far as I can tell I followed the ettus tutorial for
>>> > sd image burning, is there any extra steps involved they don't go over?
>>> Bad card?  Bad card burner?  Pulled the card before the I/O had been
>>> fully flushed out to it?  Downloaded the image in text mode?  Got the
>>>    device name wrong when burning, and now you have a large file under
>>> /dev, instead of written out to the actual card?
>>>
>>>
>>>
>>
>

--0000000000004eb0df058b9b4801
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>I managed to fix it, the error was as you mentioned =
earlier the bmap install location was incorrect I was originally using /dev=
/sdc1 when it should have just /dev/sdc=C2=A0<br><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 18, 2019, 10:02 AM M=
arcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.com">patchvonbraun=
@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"m_-436849164000616211moz-cite-prefix">On 06/18/2019 09:55=
 AM, Donnie C wrote:<br>
    </div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div dir=3D"ltr">The download sizes appear to be fine, and I am
          not using FTP, could it be something to do with the partitions
          of the microSD card? I was reading the Ettus tutorial again
          and it refered to the sd card having a few partitions one of
          which is a boot partition, is the image suppose to create this
          partition?</div>
      </div>
    </blockquote>
    The image contains everything you need.<br>
    <br>
    You did *uncompress* the image after downloading it?<br>
    <br>
    <br>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div dir=3D"ltr"><br>
        </div>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 17, 2019 at 3:3=
0
            PM Marcus D. Leech &lt;<a href=3D"mailto:patchvonbraun@gmail.co=
m" target=3D"_blank" rel=3D"noreferrer">patchvonbraun@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div bgcolor=3D"#FFFFFF">
              <div class=3D"m_-436849164000616211gmail-m_706803559479068926=
5moz-cite-prefix">On
                06/17/2019 05:27 PM, Donnie C wrote:<br>
              </div>
              <blockquote type=3D"cite">
                <div dir=3D"ltr">
                  <div>Its definitely being written to the right place
                    /dev folder doesnt have anything large under it, but
                    how would you check if the image was downloaded in
                    text mode?</div>
                </div>
              </blockquote>
              Some windows FTP clients default to text mode, even when
              downloading binary data.=C2=A0 But that would only apply if y=
ou
              used FTP.<br>
              <br>
              You sure your download didn&#39;t fail in the middle?=C2=A0 C=
ompare
              the sizes.<br>
              <br>
              <br>
              <blockquote type=3D"cite">
                <div dir=3D"ltr"><br>
                  <div class=3D"gmail_quote">
                    <div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 17,
                      2019 at 3:17 PM Marcus D. Leech &lt;<a href=3D"mailto=
:patchvonbraun@gmail.com" target=3D"_blank" rel=3D"noreferrer">patchvonbrau=
n@gmail.com</a>&gt;
                      wrote:<br>
                    </div>
                    <blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On 06=
/17/2019
                      05:09 PM, Donnie C wrote:<br>
                      &gt; Im pretty sure the speed grade matches so it
                      must be an incorrect sd <br>
                      &gt; card burn, but as far as I can tell I
                      followed the ettus tutorial for <br>
                      &gt; sd image burning, is there any extra steps
                      involved they don&#39;t go over?<br>
                      Bad card?=C2=A0 Bad card burner?=C2=A0 Pulled the car=
d
                      before the I/O had been <br>
                      fully flushed out to it?=C2=A0 Downloaded the image i=
n
                      text mode?=C2=A0 Got the<br>
                      =C2=A0 =C2=A0device name wrong when burning, and now =
you
                      have a large file under <br>
                      /dev, instead of written out to the actual card?<br>
                      <br>
                      <br>
                    </blockquote>
                  </div>
                </div>
              </blockquote>
              <br>
            </div>
          </blockquote>
        </div>
      </div>
    </blockquote>
    <br>
  </div>

</blockquote></div></div></div>

--0000000000004eb0df058b9b4801--


--===============7086189241523210352==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============7086189241523210352==--


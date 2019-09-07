Return-Path: <usrp-users-bounces@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C121AC697
	for <lists+usrp-users@lfdr.de>; Sat,  7 Sep 2019 14:37:37 +0200 (CEST)
Received: from [::1] (port=37406 helo=mm2.emwd.com)
	by mm2.emwd.com with esmtp (Exim 4.92)
	(envelope-from <usrp-users-bounces@lists.ettus.com>)
	id 1i6ZyA-0008JL-2P; Sat, 07 Sep 2019 08:37:34 -0400
Received: from mail-io1-f49.google.com ([209.85.166.49]:34355)
 by mm2.emwd.com with esmtps (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
 (Exim 4.92) (envelope-from <rajeshgps@gmail.com>) id 1i6Zy6-0008En-4L
 for usrp-users@lists.ettus.com; Sat, 07 Sep 2019 08:37:30 -0400
Received: by mail-io1-f49.google.com with SMTP id k13so3709056ioj.1
 for <usrp-users@lists.ettus.com>; Sat, 07 Sep 2019 05:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=R0cmy25v/jn96qlyDDVZSGfbdnmlIIhMFKlST/Z7wG8=;
 b=MR+vam/RiceT8cjKhD8Rb4dZFAnEMgxQZn4IA0ljF3/KihZj/2iBRzbQP1pQ3eaZ2r
 aTIXDzrURSc4JCqsc5UmPYhNZCYxhiedMHgI+fKhbL0ilr77zrFTZyPSaCBxrr1LOnBf
 6+teu8TqdK0gy+uITj8SL6ZZJBSFaMSg7yS+X5oYm0yieDH1M3y8KuEYjwMCdngb40jc
 sQUiTI/kSOgQ3WD4DouN0GuI41zxPPxfy0jE58HXCwALGItbNzAyVVbamLtecYAr/wqf
 46FwupWrYq+ezvDF3kLgJjaqK5uj8/S4QAjCWvlYVog+svJsBnEjTaPtzzw8DTQtLmqY
 mHeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=R0cmy25v/jn96qlyDDVZSGfbdnmlIIhMFKlST/Z7wG8=;
 b=YSs/4igmrf0xfNCi+sZS5w9+GUtaIQcHU3LdauWZVdo9Kir3gwP8XjLt57K02SPVNI
 NmpSIw2qRJifXZMB+4+w9XxHcpovckYDZLuO+AtxOXNdmyzOtevQH6cxvT7uW//DFJrg
 25jQOLz7ldtTblp7mpw7YHJV79GKLUHy1mS/Yz30MVrpiK2jDSnCSXP1riw2r1sTWlqZ
 tIuF8B6BV9S2l7wOcoufOj+zOjKD1MS+CXzLVNmgdNVPYuYKjXjR82IodfAeZHV13lvN
 5SBDa+gRnJxv9tO9Hp55OCu7yqyjgxw7wsiaaPvOCLDzKNt8IepLk742E9x1h+cGPRfu
 Kffw==
X-Gm-Message-State: APjAAAVGJE78zEmI/6nUQUSxmK/gsce6wFeOPGHQ2StEELOiH+1fKHQk
 wFbWfGca0xmPpT8C7bsQkzFCeHMau7Vt4T7W01M=
X-Google-Smtp-Source: APXvYqwiMMbJQcf77yliKX2C4H5zeycmTQkf4GYJYUpxC+EwFBZZrO7rLJw5zQ5P6sdbyCjVpNlah0z9WuizqMnOyys=
X-Received: by 2002:a5d:9856:: with SMTP id p22mr2824304ios.231.1567859809208; 
 Sat, 07 Sep 2019 05:36:49 -0700 (PDT)
MIME-Version: 1.0
References: <CADk-HHD5kXWYz6fHhkxSM3Qu4ZbsTUPJ7pmVzud_wX2A7G=ffQ@mail.gmail.com>
 <CAGNhwTOx998ykxC8r6xT4w+c2wTXwf2Fsyt6mf+dXKGDf89BVQ@mail.gmail.com>
 <CADk-HHAmxv0hYPFA99PAALNW1WGz-MBWXYeEJo3fEB5_W5Oe9Q@mail.gmail.com>
 <62ebd388-90b1-e46d-57e8-38d48fcab44d@comcast.net>
 <cd4d078a-43f5-8a82-3456-5fc4c86f030f@comcast.net>
In-Reply-To: <cd4d078a-43f5-8a82-3456-5fc4c86f030f@comcast.net>
Date: Sat, 7 Sep 2019 13:36:37 +0100
Message-ID: <CADk-HHCJbxV3Px=eu5tZrEC3zVh81QXys46NegQ3V809D+2O3Q@mail.gmail.com>
To: Ron Economos <w6rz@comcast.net>
Subject: Re: [USRP-users] (no subject)
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
From: "Dr. Rajesh Tiwari via USRP-users" <usrp-users@lists.ettus.com>
Reply-To: "Dr. Rajesh Tiwari" <rajeshgps@gmail.com>
Cc: USRP list <usrp-users@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============0136934344106515182=="
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

--===============0136934344106515182==
Content-Type: multipart/alternative; boundary="000000000000fc4c230591f5cece"

--000000000000fc4c230591f5cece
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ron,

Thanks for response. I think I am bit confused here..., I am trying to
install from https://github.com/bastibl/gr-ieee802-11 and I am getting
error.

Regards
Rajesh

On Sat, Sep 7, 2019 at 12:07 PM Ron Economos via USRP-users <
usrp-users@lists.ettus.com> wrote:

> Opps, should be:
>
> git checkout maint-3.7
>
> Ron
> On 9/7/19 04:05, Ron Economos via USRP-users wrote:
>
> There's a 3.7 version of gr-ieee802-11. In the gr-ieee802-11 directory,
> type:
>
> git checkout maint3.7
>
> Ron
> On 9/7/19 03:52, Dr. Rajesh Tiwari via USRP-users wrote:
>
> HI Michael,
>
> Many thanks for prompt response. I encountered problem in installing
> module "gr-ieee802-11" as it seems requiring gnuradio-companion, version
> 3.8. I am not able to update my GRC version 3.7 to 3.8. Any suggestion,
> please let me know.
>
> Regards
> Rajesh
>
> On Fri, Sep 6, 2019 at 5:14 PM Michael Dickens <michael.dickens@ettus.com=
>
> wrote:
>
>> Hi Rajesh - The block "OFDM Sync Short" is part of the GR out-of-tree
>> (OOT) module "gr-ieee802-11" ... as are many of the other blocks in the
>> image you provided. If that OOT is not installed already, it shouldn't b=
e
>> difficult to do so. Hope this is useful! - MLD
>>
>> On Fri, Sep 6, 2019 at 5:10 AM Dr. Rajesh Tiwari via USRP-users <
>> usrp-users@lists.ettus.com> wrote:
>>
>>> Dear All,
>>>
>>> I am trying to decode IEEE 802.11a OFDM receiver as per GRC block
>>> diagram used in Paper "Bloessl et al(2013), An IEEE 802.11a/g/p OFDM
>>> Receiver for GNU Radio, SRIF=E2=80=9913, August 12, 2013, Hong Kong, Ch=
ina.". The
>>> screenshot of block diagram given below, In GRC, I didn't find "OFDM Sy=
nc
>>> Short" block, any help would be appreciated.
>>>
>>> "GRC block diagram from Bloessl et al(2013), An IEEE 802.11a/g/p OFDM
>>> Receiver for GNU Radio, SRIF=E2=80=9913, August 12, 2013, Hong Kong, Ch=
ina"
>>>
>>> Regards
>>> Rajesh
>>>
>>> _______________________________________________
>>> USRP-users mailing list
>>> USRP-users@lists.ettus.com
>>> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>>>
>>
>> --
>> Michael Dickens, Mac OS X Programmer
>>
>> Ettus Research Technical Support
>>
>> Email: support@ettus.com
>>
>> Web: http://www.ettus.com
>>
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com
>
>
> _______________________________________________
> USRP-users mailing listUSRP-users@lists.ettus.comhttp://lists.ettus.com/m=
ailman/listinfo/usrp-users_lists.ettus.com
>
> _______________________________________________
> USRP-users mailing list
> USRP-users@lists.ettus.com
> http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com
>

--000000000000fc4c230591f5cece
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Ron,<div><br></div><div>Thanks for response. I think I =
am bit confused here..., I am trying to install from=C2=A0<a href=3D"https:=
//github.com/bastibl/gr-ieee802-11">https://github.com/bastibl/gr-ieee802-1=
1</a>=C2=A0and I am getting error.=C2=A0</div><div><br></div><div>Regards</=
div><div>Rajesh</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Sat, Sep 7, 2019 at 12:07 PM Ron Economos via USRP-=
users &lt;<a href=3D"mailto:usrp-users@lists.ettus.com">usrp-users@lists.et=
tus.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p>Opps, should be:</p>
    <p>git checkout maint-3.7</p>
    <p>Ron<br>
    </p>
    <div class=3D"gmail-m_-2959264146492741720moz-cite-prefix">On 9/7/19 04=
:05, Ron Economos via
      USRP-users wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <p>There&#39;s a 3.7 version of gr-ieee802-11. In the gr-ieee802-11
        directory, type:<br>
      </p>
      <p>git checkout maint3.7</p>
      <p>Ron<br>
      </p>
      <div class=3D"gmail-m_-2959264146492741720moz-cite-prefix">On 9/7/19 =
03:52, Dr. Rajesh Tiwari
        via USRP-users wrote:<br>
      </div>
      <blockquote type=3D"cite">
       =20
        <div dir=3D"ltr">HI=C2=A0Michael,
          <div><br>
          </div>
          <div>Many thanks for prompt response. I encountered problem in
            installing module &quot;gr-ieee802-11&quot; as it seems requiri=
ng
            gnuradio-companion, version 3.8. I am not able to update my
            GRC version 3.7 to 3.8. Any suggestion, please let me know.</di=
v>
          <div><br>
          </div>
          <div>Regards</div>
          <div>Rajesh</div>
        </div>
        <br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep 6, 2019 at 5:14
            PM Michael Dickens &lt;<a href=3D"mailto:michael.dickens@ettus.=
com" target=3D"_blank">michael.dickens@ettus.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div dir=3D"ltr">
              <div dir=3D"ltr">Hi=C2=A0Rajesh - The block &quot;OFDM Sync S=
hort&quot; is
                part of the GR out-of-tree (OOT) module &quot;gr-ieee802-11=
&quot;
                ... as are many of the other blocks in the image you
                provided. If that OOT is not installed already, it
                shouldn&#39;t be difficult to do so. Hope this is useful! -
                MLD</div>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Sep 6, 2019 a=
t
                  5:10 AM Dr. Rajesh Tiwari via USRP-users &lt;<a href=3D"m=
ailto:usrp-users@lists.ettus.com" target=3D"_blank">usrp-users@lists.ettus.=
com</a>&gt;
                  wrote:<br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
                  <div dir=3D"ltr">
                    <div>Dear All,</div>
                    <div><br>
                    </div>
                    <div>I am trying to decode IEEE 802.11a OFDM
                      receiver as per GRC block diagram used in Paper
                      &quot;Bloessl et al(2013), An IEEE 802.11a/g/p OFDM
                      Receiver for GNU Radio,=C2=A0SRIF=E2=80=9913, August =
12, 2013,
                      Hong Kong, China.&quot;. The screenshot of block
                      diagram given below, In GRC, I didn&#39;t find &quot;=
OFDM
                      Sync Short&quot; block, any help would=C2=A0be apprec=
iated.</div>
                    <div><br>
                    </div>
                    <div>&quot;GRC block diagram from Bloessl et al(2013), =
An
                      IEEE 802.11a/g/p OFDM Receiver for GNU
                      Radio,=C2=A0SRIF=E2=80=9913, August 12, 2013, Hong Ko=
ng, China&quot;</div>
                    <div>
                      <div><br>
                      </div>
                    </div>
                    <div>Regards</div>
                    <div>Rajesh</div>
                    <div><br>
                    </div>
                  </div>
                  _______________________________________________<br>
                  USRP-users mailing list<br>
                  <a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_=
blank">USRP-users@lists.ettus.com</a><br>
                  <a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-u=
sers_lists.ettus.com" rel=3D"noreferrer" target=3D"_blank">http://lists.ett=
us.com/mailman/listinfo/usrp-users_lists.ettus.com</a><br>
                </blockquote>
              </div>
              <div><br>
              </div>
              -- <br>
              <div dir=3D"ltr" class=3D"gmail-m_-2959264146492741720gmail-m=
_-1906365911473962634gmail_signature">
                <div dir=3D"ltr">Michael Dickens, Mac OS X Programmer<br>
                  <br>
                  Ettus Research Technical Support<br>
                  <br>
                  Email: <a href=3D"mailto:support@ettus.com" target=3D"_bl=
ank">support@ettus.com</a><br>
                  <br>
                  Web: <a href=3D"http://www.ettus.com" target=3D"_blank">h=
ttp://www.ettus.com</a></div>
              </div>
            </div>
          </blockquote>
        </div>
        <br>
        <fieldset class=3D"gmail-m_-2959264146492741720mimeAttachmentHeader=
"></fieldset>
        <pre class=3D"gmail-m_-2959264146492741720moz-quote-pre">__________=
_____________________________________
USRP-users mailing list
<a class=3D"gmail-m_-2959264146492741720moz-txt-link-abbreviated" href=3D"m=
ailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.=
com</a>
<a class=3D"gmail-m_-2959264146492741720moz-txt-link-freetext" href=3D"http=
://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_=
blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</=
a>
</pre>
      </blockquote>
      <br>
      <fieldset class=3D"gmail-m_-2959264146492741720mimeAttachmentHeader">=
</fieldset>
      <pre class=3D"gmail-m_-2959264146492741720moz-quote-pre">____________=
___________________________________
USRP-users mailing list
<a class=3D"gmail-m_-2959264146492741720moz-txt-link-abbreviated" href=3D"m=
ailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@lists.ettus.=
com</a>
<a class=3D"gmail-m_-2959264146492741720moz-txt-link-freetext" href=3D"http=
://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com" target=3D"_=
blank">http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com</=
a>
</pre>
    </blockquote>
  </div>

_______________________________________________<br>
USRP-users mailing list<br>
<a href=3D"mailto:USRP-users@lists.ettus.com" target=3D"_blank">USRP-users@=
lists.ettus.com</a><br>
<a href=3D"http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.c=
om" rel=3D"noreferrer" target=3D"_blank">http://lists.ettus.com/mailman/lis=
tinfo/usrp-users_lists.ettus.com</a><br>
</blockquote></div>

--000000000000fc4c230591f5cece--


--===============0136934344106515182==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list
USRP-users@lists.ettus.com
http://lists.ettus.com/mailman/listinfo/usrp-users_lists.ettus.com

--===============0136934344106515182==--


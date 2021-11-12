Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 1667344ED31
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 20:21:55 +0100 (CET)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id 9825E384ACC
	for <lists+usrp-users@lfdr.de>; Fri, 12 Nov 2021 14:21:53 -0500 (EST)
Authentication-Results: mm2.emwd.com;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="HM3+rmrm";
	dkim-atps=neutral
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
	by mm2.emwd.com (Postfix) with ESMTPS id 5166538431F
	for <USRP-users@lists.ettus.com>; Fri, 12 Nov 2021 14:21:09 -0500 (EST)
Received: by mail-il1-f182.google.com with SMTP id j28so10032600ila.1
        for <USRP-users@lists.ettus.com>; Fri, 12 Nov 2021 11:21:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=6ZKD21sCEI5tJhNE+3lK6JwBjatF2fxuU22dRbeVMiI=;
        b=HM3+rmrmCGqd0y6oe0tvXMKbW4Mo2cafF0MSvpmpWz/MuMwh2+aZ0l/KhVs1gLuYgO
         s1bSYEW+kJj0kvCvs4W54rdVuhLo4utnrXbcJ8NXHUjU2LTYL165ejXs3hud7iBkxuw0
         VJ93dFWFQQeYeNHQxCY6ptXkyPFjp33mgjbhEsdeBrCJxWWw0WgjfyhDMooYydvyxjQh
         0AddtJ0KYfuMODGmr7QBmvL6sef50qWp31HNqAcD7ri7zPlYzKOqKQGnRmWl5Qvoeobe
         WvEFou/2zdhTzgeKTf4LqTEYX+f4jhCbJVNePEOzu2Rfvj2sYYnuKqKUdqKTIVOh+W45
         n+OA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=6ZKD21sCEI5tJhNE+3lK6JwBjatF2fxuU22dRbeVMiI=;
        b=abNBeiivuoQ6ltAHbwdi8YxuhvQ+f4PUEZhaEXsc/FUSNDTRT5gJujIMM1G+kWtsx1
         AZP9VgjTLouGdNsW24aGtz/4U23VA+z9g+im6aRAf3xx2lY8yUz1pZ7tTvEnCtWU5zFd
         dGh/AXketD0dwFaj18KleGzfWpHjcWFki913vCI/MrHToppjRXQYKk4zuFfO+q/W1Xks
         2FlHB12W/5y0nN5MsfjkcedRIhdY1zG5bL5jOHJOx6ZnnzIDc5uGHqI9Rl/nM5+HHsxS
         BdtQx9ugIxF33jWCSNuZ1sFWd0aJx1l31H4w11kErR2PGT60U2IMFmMVttIfx6IjJat1
         m3ew==
X-Gm-Message-State: AOAM5314hzgVYI4B/ix5x9DpdY4xBTfvNez0jzJsjWJtvYONYbfUicsT
	9j0vIKzqR/JkpTPwqO2zDGo=
X-Google-Smtp-Source: ABdhPJzrQ1QoJkwa4YwhHWMP6lYaTa/9NDefh6XsND/DCXuvpNKvS4cIX3dQeV3UdLTdsDZJkh8StA==
X-Received: by 2002:a05:6e02:1051:: with SMTP id p17mr10496850ilj.220.1636744868601;
        Fri, 12 Nov 2021 11:21:08 -0800 (PST)
Received: from smtpclient.apple (bras-base-smflon1825w-grc-07-174-93-0-206.dsl.bell.ca. [174.93.0.206])
        by smtp.gmail.com with ESMTPSA id g7sm4550892ild.87.2021.11.12.11.21.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Nov 2021 11:21:08 -0800 (PST)
From: Marcus D Leech <patchvonbraun@gmail.com>
Mime-Version: 1.0 (1.0)
Date: Fri, 12 Nov 2021 14:21:07 -0500
Message-Id: <6EDF2BCF-7B47-43D8-B95D-C127847D8A64@gmail.com>
References: <CAB__hTQOESBO+B_=ZxRD2x84qbkWK6HCBewmGSkG7HPFnv1j0w@mail.gmail.com>
In-Reply-To: <CAB__hTQOESBO+B_=ZxRD2x84qbkWK6HCBewmGSkG7HPFnv1j0w@mail.gmail.com>
To: Rob Kossler <rkossler@nd.edu>
X-Mailer: iPhone Mail (18H107)
Message-ID-Hash: MGICEIAWN63H26WZIOAMD2CXF2MIXS6Q
X-Message-ID-Hash: MGICEIAWN63H26WZIOAMD2CXF2MIXS6Q
X-MailFrom: patchvonbraun@gmail.com
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
CC: USRP-users@lists.ettus.com
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: E310 file system problems
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/MGICEIAWN63H26WZIOAMD2CXF2MIXS6Q/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============8984932279111052110=="


--===============8984932279111052110==
Content-Type: multipart/alternative; boundary=Apple-Mail-2EDB4070-C001-4863-850A-7968E4CAEACC
Content-Transfer-Encoding: 7bit


--Apple-Mail-2EDB4070-C001-4863-850A-7968E4CAEACC
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Yeah. So fsck balks if the time stamp on the superblock is In the future. Wh=
ich it probably would be in you=E2=80=99re case because when your host machi=
ne sets the =E2=80=9Cclean flag=E2=80=9D, it will also update the superblock=
 time stamp.=20



Sent from my iPhone

> On Nov 12, 2021, at 1:55 PM, Rob Kossler <rkossler@nd.edu> wrote:
>=20
> =EF=BB=BF
> By the way, I just removed my working SD card from the E310 and inserted i=
t in my host (Ubuntu 20.04) SD card reader and issued the "umount" commands.=
  Nothing else.  When I reinserted into the E310, boot issue appears (fsck f=
ails for /data and thus won't mount and puts me in some maintenance mode).
> Rob
>=20
>> On Fri, Nov 12, 2021 at 1:49 PM Rob Kossler <rkossler@nd.edu> wrote:
>>> On Fri, Nov 12, 2021 at 1:17 PM Marcus D. Leech <patchvonbraun@gmail.com=
> wrote:
>>=20
>>>> On 2021-11-12 13:14, Rob Kossler wrote:
>>>>>=20
>>>>=20
>>>> I will try soon, but such experiments are "expensive" because when it f=
ails I have to re-burn the file system and then reconfigure stuff afterwords=
 since I don't know how to recover from the issue.  My guess was that either=
 the mount or the eject was writing a date (perhaps an "accessed" date in so=
me metadata) that was much in the future relative to the file system "Aug 6 2=
021" date that it gets and somehow this date mismatch was causing the fsck f=
ailure.  But I am not knowledgeable on this. =20
>>>>=20
>>>> Regarding your NTPD comment, perhaps it isn't accessing any RTC.  Perha=
ps it is storing the time in the file system somewhere such that it can acce=
ss it on next boot?
>>> Your comments indicated the resulting time after reboot in this case was=
 *correct*, which would mean that something would have to be "keeping time" a=
cross the
>>>   reboot.  Or did you mean just that the time after reboot, without the n=
etwork cable connected, but with NTPD turned on, was "closer" to correct tha=
n without?
>>=20
>> You're right. I just meant that it was today's date on reboot.  I didn't c=
heck to see if it was actually keeping time in between.  It would have only b=
een a few seconds anyway.=20

--Apple-Mail-2EDB4070-C001-4863-850A-7968E4CAEACC
Content-Type: text/html;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"content-type" content=3D"text/html; charset=3D=
utf-8"></head><body dir=3D"auto">Yeah. So fsck balks if the time stamp on th=
e superblock is In the future. Which it probably would be in you=E2=80=99re c=
ase because when your host machine sets the =E2=80=9Cclean flag=E2=80=9D, it=
 will also update the superblock time stamp.&nbsp;<div><br></div><div><br><b=
r><div dir=3D"ltr">Sent from my iPhone</div><div dir=3D"ltr"><br><blockquote=
 type=3D"cite">On Nov 12, 2021, at 1:55 PM, Rob Kossler &lt;rkossler@nd.edu&=
gt; wrote:<br><br></blockquote></div><blockquote type=3D"cite"><div dir=3D"l=
tr">=EF=BB=BF<div dir=3D"ltr">By the way, I just removed my working SD card f=
rom the E310 and inserted it in my host (Ubuntu 20.04) SD card reader and is=
sued the "umount" commands.&nbsp; Nothing else.&nbsp; When I reinserted into=
 the E310, boot issue appears (fsck fails for /data and thus won't mount and=
 puts me in some maintenance mode).<div>Rob</div></div><br><div class=3D"gma=
il_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Nov 12, 2021 at 1:49=
 PM Rob Kossler &lt;<a href=3D"mailto:rkossler@nd.edu">rkossler@nd.edu</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div dir=3D"ltr">On Fri, Nov 12, 2021 at 1:17 PM Marcus D. Leech &l=
t;<a href=3D"mailto:patchvonbraun@gmail.com" target=3D"_blank">patchvonbraun=
@gmail.com</a>&gt; wrote:<br></div><div><div class=3D"gmail_quote"><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    <div>On 2021-11-12 13:14, Rob Kossler wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div><br>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>I will try soon, but such experiments are "expensive"
            because when it fails I have to re-burn the file system and
            then reconfigure stuff afterwords&nbsp;since I don't know how to=

            recover from the&nbsp;issue.&nbsp; My guess was that either the m=
ount
            or the eject was writing a date (perhaps an "accessed" date
            in some metadata) that was much in the future relative to
            the file system "Aug 6 2021" date that it gets and somehow
            this date mismatch was causing the fsck failure.&nbsp; But I am
            not knowledgeable on this.&nbsp;&nbsp;</div>
          <div><br>
          </div>
          <div>Regarding your NTPD comment, perhaps it isn't accessing
            any RTC.&nbsp; Perhaps it is storing the time in the file system=

            somewhere such that it can access&nbsp;it on next boot?</div>
        </div>
      </div>
    </blockquote>
    Your comments indicated the resulting time after reboot in this case
    was *correct*, which would mean that something would have to be
    "keeping time" across the<br>
    &nbsp; reboot.&nbsp; Or did you mean just that the time after reboot, wi=
thout
    the network cable connected, but with NTPD turned on, was "closer"
    to correct than without?<br></div></blockquote><div><br></div><div>You'r=
e right. I just meant that it was today's date on reboot.&nbsp; I didn't che=
ck to see if it was actually keeping time in between.&nbsp; It would have on=
ly been a few seconds anyway.&nbsp;</div></div></div>
</div>
</blockquote></div>
</div></blockquote></div></body></html>=

--Apple-Mail-2EDB4070-C001-4863-850A-7968E4CAEACC--

--===============8984932279111052110==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============8984932279111052110==--

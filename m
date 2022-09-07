Return-Path: <usrp-users-bounces+lists+usrp-users=lfdr.de@lists.ettus.com>
X-Original-To: lists+usrp-users@lfdr.de
Delivered-To: lists+usrp-users@lfdr.de
Received: from mm2.emwd.com (mm2.emwd.com [172.104.30.75])
	by mail.lfdr.de (Postfix) with ESMTPS id 3772A5B0B81
	for <lists+usrp-users@lfdr.de>; Wed,  7 Sep 2022 19:31:01 +0200 (CEST)
Received: from mm2.emwd.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id A9F843841F0
	for <lists+usrp-users@lfdr.de>; Wed,  7 Sep 2022 13:30:59 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662571859; bh=vKVeyTvRYoCk5j3yvwhzmmCqjNt089dab2DyewGjrmc=;
	h=Date:To:From:In-Reply-To:Subject:List-Id:List-Archive:List-Help:
	 List-Owner:List-Post:List-Subscribe:List-Unsubscribe:From;
	b=psWIGE3ZzhWrvhxmbJoQ6BcP/4PItNhdWf341GvNJBXT120HoHlOgbHpCPEF54f9B
	 8PPeuPXH68+yDuGKqTiX2iQN9ZR0Y0/DbIjpXqaofSkBt5Rfnjf8kfklPD3jtVnFwR
	 V6eZicPYr7LUlQO4aS1UJS+qaae9U8m3g3pz/kZ/ZL6iiGvyBdnQWqFue32ULmy8DO
	 8OkCctRw901XDIuzOh50ZjO3vxQilsV18BESxeRQNqz0BxsytjfsrSrK/panrqAt04
	 il4Y8jvsQ6Jglr/bOtfqdPrKjGAgmmbXc01JGPYvTcoAwAI5dQFaJo5MxYbysWNEYP
	 ZRhU9oM1TkZIQ==
Received: from lists.ettus.com (localhost [127.0.0.1])
	by mm2.emwd.com (Postfix) with ESMTP id BFE95384022
	for <usrp-users@lists.ettus.com>; Wed,  7 Sep 2022 13:29:07 -0400 (EDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=emwd.com; s=harmony;
	t=1662571747; bh=pCCVC3bs8vv9BbI8xsBwkSdj8Y7xxBjqiSP6dqxrUYY=;
	h=Date:To:From:Subject:In-Reply-To:From;
	b=Bb0Va+dWIZ2y2m0ZaewIa64kazhb0cu/6WcTvAZVXRD5FjKHJFcitsDXyyVqPhAV6
	 laxKhDKxQr52fYhPZtTdzFp/+1UwF4J6NzLy+VsZxy1znAsKx1lYBXdyMSNTK4JTCX
	 UyMOSwmcdjxD29zMdhFBGEgoERvCkJOCfu7jRAce4V3R6oJuluhHwIhAZk2nHxnagl
	 6UZuhXJw6F9YxY7lMTqHTOJ4AT4FnV2z9rGvKLNGBHyAsQEDiuTiDDHHZ5k3Mi2+Vp
	 VlBQ5XwnsSwOVZL5pL/p5jSfTynYXO9JslDvbGb3vNUGK3meRU6q9MhS9p10L2BOXz
	 U3SlAs9/ITrJg==
Date: Wed, 7 Sep 2022 17:29:07 +0000
To: usrp-users@lists.ettus.com
From: perper@o2.pl
Message-ID: <MNPagOuctsByX8yExSc0I7PRDFDuhS7atXUyjJPnE@lists.ettus.com>
X-Mailer: PHPMailer 6.1.7 (https://github.com/PHPMailer/PHPMailer)
In-Reply-To: 3500c1b7-7bd7-81da-9823-2b20d9086ab3@ant.uni-bremen.de
MIME-Version: 1.0
Message-ID-Hash: 5VASJMLI3RJ7A3IIGKWQWP6SNYDHNYO6
X-Message-ID-Hash: 5VASJMLI3RJ7A3IIGKWQWP6SNYDHNYO6
X-MailFrom: perper@o2.pl
X-Mailman-Rule-Misses: dmarc-mitigation; no-senders; approved; emergency; loop; banned-address; member-moderation; header-match-usrp-users.lists.ettus.com-0; header-match-usrp-users.lists.ettus.com-1; header-match-usrp-users.lists.ettus.com-2; nonmember-moderation; administrivia; implicit-dest; max-recipients; max-size; news-moderation; no-subject; digests; suspicious-header
X-Mailman-Version: 3.3.3
Precedence: list
Subject: [USRP-users] Re: [External] Re: B210 reporting U/O on Ubuntu 22.04
List-Id: USRP-related discussion and support <usrp-users.lists.ettus.com>
Archived-At: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/message/5VASJMLI3RJ7A3IIGKWQWP6SNYDHNYO6/>
List-Archive: <https://lists.ettus.com/archives/list/usrp-users@lists.ettus.com/>
List-Help: <mailto:usrp-users-request@lists.ettus.com?subject=help>
List-Owner: <mailto:usrp-users-owner@lists.ettus.com>
List-Post: <mailto:usrp-users@lists.ettus.com>
List-Subscribe: <mailto:usrp-users-join@lists.ettus.com>
List-Unsubscribe: <mailto:usrp-users-leave@lists.ettus.com>
Content-Type: multipart/mixed; boundary="===============9121474800893974720=="

This is a multi-part message in MIME format.

--===============9121474800893974720==
Content-Type: multipart/alternative;
 boundary="b1_MNPagOuctsByX8yExSc0I7PRDFDuhS7atXUyjJPnE"
Content-Transfer-Encoding: 7bit

This is a multi-part message in MIME format.

--b1_MNPagOuctsByX8yExSc0I7PRDFDuhS7atXUyjJPnE
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Johannes Demel wrote:

> Hi all,
>
> thanks for your suggestions.
>
> A few more details:
>
> * Ryzen 5900X CPU
> * UHD reports USB 3. With USB2 it would probably fail above \~8MSps.
> * Ubuntu 22.04 with GCC 11.2, Python3.10
>
> I tried 2TX streams alone at 30.72MSps. works. check.
> I tried 2RX streams alone at 30.72MSps. works. check.
>
> I tried configurations with
>
> * num_recv_frames=3Dnum_send_frames=3D256
> * num_recv_frames=3Dnum_send_frames=3D512
>   Doesn't help.
>
> The error pattern looks like this:
> UUUUUUUUO\[D00:00:07.60063828\] Detected Rx sequence error.
>
> I tried
>
> * send_frame_size=3Drecv_frame_size=3D8000
>   also in conjuntion with the num_xxx_frames configurations. But that
>   didn't help either.
>
> I will try to use UHD 4.1 on that machine. If that works, I'll just
> switch back. Otherwise, I'd get suspicious of Ubuntu and the hardware.
>
> Cheers
> Johannes
>
> On 07.09.22 17:17, McKnight, Ryan wrote:
>
> > I have found after much trial and error that adding the arguments
> > =E2=80=9Crecv_frame_size=3D8000,num_recv_frames=3D512=E2=80=9D to the=
 device string allows
> > for me to sample at the full 56 Msps rate on the B series devices
> > without any overruns (tested using UHD 4.2.0.1 on both Debian 11 and
> > Arch Linux on various computers). I haven=E2=80=99t tried transmittin=
g at all
> > though so not sure if there are better arguments for that. One
> > additional thing to double check for is that your device is actually
> > connecting using USB 3.0, I have found a surprising amount of bad USB=
3
> > cables that would only link up at USB2 speeds (check using =E2=80=9Cs=
udo lsusb
> > \-tv=E2=80=9D after running uhd_usrp_probe to load firmware onto the =
device,
> > should show speed of 5000M).
> >
> > *From:* perper@o2.pl [perper@o2.pl](mailto:perper@o2.pl)
> > *Sent:* Wednesday, September 7, 2022 10:31 AM
> > *To:* usrp-users@lists.ettus.com
> > *Subject:* \[External\] \[USRP-users\] Re: B210 reporting U/O on Ubun=
tu 22.04
> >
> > *Use caution with links and attachments.*
> >
> > perper@o2.pl <mailto:perper@o2.pl> wrote:
> >
> > ```
> > perper@o2.pl <mailto:perper@o2.pl> wrote:
> >=20
> >     Hi,
> >=20
> >     I can only confirm that I see the same result: 24MHz is working,
> >     starting from about 24.5MHz there=E2=80=99s a lot of underruns.
> >=20
> >     My CPU: AMD Ryzen Threadripper 2990WX, 128GB RAM, motherboard
> >     Asus X399.
> >=20
> > =E2=80=A6 and the system is Ubuntu 20.04 with UHD 4.2.0.1.
> > ```
> >
> > But with UHD 4.1.0.6 there situation is exactly the same (not working
> > for >=3D 24.5M), so if you=E2=80=99ve got it somewhere working it wou=
ld be worth
> > sharing:
> >
> > * your exact UHD revision,
> > * specs of your PC.

If you could capture situation where it worked and stopped working on the=
 same machine that would get you much closer to solving the issue.

You could write a test and use it for automatic git bisect (git bisect ru=
n): https://lwn.net/Articles/317154/

If it=E2=80=99s UHD fault this can show you first commit that worsened ma=
ximum transfer rate.

Best Regards,\
Piotr Krysik

--b1_MNPagOuctsByX8yExSc0I7PRDFDuhS7atXUyjJPnE
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Johannes Demel wrote:</p><blockquote><p>Hi all,</p><p>thanks for your =
suggestions.</p><p>A few more details:</p><ul data-tight=3D"true"><li><p>=
Ryzen 5900X CPU</p></li><li><p>UHD reports USB 3. With USB2 it would prob=
ably fail above ~8MSps.</p></li><li><p>Ubuntu 22.04 with GCC 11.2, Python=
3.10</p></li></ul><p>I tried 2TX streams alone at 30.72MSps. works. check=
.
I tried 2RX streams alone at 30.72MSps. works. check.</p><p>I tried confi=
gurations with</p><ul data-tight=3D"true"><li><p>num_recv_frames=3Dnum_se=
nd_frames=3D256</p></li><li><p>num_recv_frames=3Dnum_send_frames=3D512
Doesn't help.</p></li></ul><p>The error pattern looks like this:
UUUUUUUUO[D00:00:07.60063828] Detected Rx sequence error.</p><p>I tried</=
p><ul data-tight=3D"true"><li><p>send_frame_size=3Drecv_frame_size=3D8000
also in conjuntion with the num_xxx_frames configurations. But that
didn't help either.</p></li></ul><p>I will try to use UHD 4.1 on that mac=
hine. If that works, I'll just
switch back. Otherwise, I'd get suspicious of Ubuntu and the hardware.</p=
><p>Cheers
Johannes</p><p>On 07.09.22 17:17, McKnight, Ryan wrote:</p><blockquote><p=
>I have found after much trial and error that adding the arguments
=E2=80=9Crecv_frame_size=3D8000,num_recv_frames=3D512=E2=80=9D to the dev=
ice string allows
for me to sample at the full 56 Msps rate on the B series devices
without any overruns (tested using UHD 4.2.0.1 on both Debian 11 and
Arch Linux on various computers). I haven=E2=80=99t tried transmitting at=
 all
though so not sure if there are better arguments for that. One
additional thing to double check for is that your device is actually
connecting using USB 3.0, I have found a surprising amount of bad USB3
cables that would only link up at USB2 speeds (check using =E2=80=9Csudo =
lsusb
-tv=E2=80=9D after running uhd_usrp_probe to load firmware onto the devic=
e,
should show speed of 5000M).</p><p><em>From:</em> perper@o2.pl <a href=3D=
"mailto:perper@o2.pl">perper@o2.pl</a>
<em>Sent:</em> Wednesday, September 7, 2022 10:31 AM
<em>To:</em> usrp-users@lists.ettus.com
<em>Subject:</em> [External] [USRP-users] Re: B210 reporting U/O on Ubunt=
u 22.04</p><p><em>Use caution with links and attachments.</em></p><p>perp=
er@o2.pl <a href=3D"mailto:perper@o2.pl">mailto:perper@o2.pl</a> wrote:</=
p><pre><code>perper@o2.pl &lt;mailto:perper@o2.pl&gt; wrote:

    Hi,

    I can only confirm that I see the same result: 24MHz is working,
    starting from about 24.5MHz there=E2=80=99s a lot of underruns.

    My CPU: AMD Ryzen Threadripper 2990WX, 128GB RAM, motherboard
    Asus X399.

=E2=80=A6 and the system is Ubuntu 20.04 with UHD 4.2.0.1.</code></pre><p=
>But with UHD 4.1.0.6 there situation is exactly the same (not working
for &gt;=3D 24.5M), so if you=E2=80=99ve got it somewhere working it woul=
d be worth
sharing:</p><ul data-tight=3D"true"><li><p>your exact UHD revision,</p></=
li><li><p>specs of your PC.</p></li></ul></blockquote></blockquote><p>If =
you could capture situation where it worked and stopped working on the sa=
me machine that would get you much closer to solving the issue.</p><p>You=
 could write a test and use it for automatic git bisect (git bisect run):=
 https://lwn.net/Articles/317154/</p><p>If it=E2=80=99s UHD fault this ca=
n show you first commit that worsened maximum transfer rate.</p><p>Best R=
egards,<br>Piotr Krysik</p>


--b1_MNPagOuctsByX8yExSc0I7PRDFDuhS7atXUyjJPnE--

--===============9121474800893974720==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
USRP-users mailing list -- usrp-users@lists.ettus.com
To unsubscribe send an email to usrp-users-leave@lists.ettus.com

--===============9121474800893974720==--
